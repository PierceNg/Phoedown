"
I render Markdown into HTML.
"
Class {
	#name : #HdHtmlRenderer,
	#superclass : #HdRenderer,
	#instVars : [
		'htmlFlags'
	],
	#category : #'Phoedown-API'
}

{ #category : #rendering }
HdHtmlRenderer class >> render: aMarkdownString [
	^ self new render: aMarkdownString
]

{ #category : #accessing }
HdHtmlRenderer >> document [
	^ document ifNil: [ 
		document := HdFFILibrary uniqueInstance 
			apiNewDocumentC: self renderer 
			with: self markdownExtensionsBitMask
			with: 16 ]

]

{ #category : #accessing }
HdHtmlRenderer >> htmlFlags [
	^ htmlFlags
]

{ #category : #accessing }
HdHtmlRenderer >> htmlFlagsArray: anArray [
	htmlFlags := anArray
]

{ #category : #private }
HdHtmlRenderer >> htmlFlagsBitMask [

	^ htmlFlags isNil
		ifTrue: [ 0 ]
		ifFalse: [ htmlFlags inject: 0 into: [ :mask :next | mask bitOr: next value ]] 
]

{ #category : #rendering }
HdHtmlRenderer >> render: aMarkdownString [
	^ super render: aMarkdownString 
		returnBlock: [ :buf |
			HdFFILibrary uniqueInstance bufferToString: buf ]
]

{ #category : #private }
HdHtmlRenderer >> renderer [
	^ renderer ifNil: [ 
		renderer := HdFFILibrary uniqueInstance apiNewHtmlRenderer: self htmlFlagsBitMask with: 0 ]

]

{ #category : #initialization }
HdHtmlRenderer >> setHtmlFlag: aFlag [

	self assert: (aFlag class = HdHtmlFlags).
	htmlFlags ifNil: [ htmlFlags := OrderedCollection new ].
	htmlFlags add: aFlag.
]
