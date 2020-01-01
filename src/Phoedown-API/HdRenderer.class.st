"
I am an abstract super class of Phoedown renderers.
"
Class {
	#name : #HdRenderer,
	#superclass : #Object,
	#instVars : [
		'document',
		'renderer',
		'markdownExtensions'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Phoedown-API'
}

{ #category : #accessing }
HdRenderer class >> default [
	^ default ifNil: [ default := self new ]
]

{ #category : #private }
HdRenderer >> document [
	self subclassResponsibility 
]

{ #category : #accessing }
HdRenderer >> library [
	^ HdFFILibrary uniqueInstance 
]

{ #category : #accessing }
HdRenderer >> markdownExtensionsArray: anArray [
	markdownExtensions := anArray
]

{ #category : #private }
HdRenderer >> markdownExtensionsBitMask [

	^ markdownExtensions isNil
		ifTrue: [ 0 ]
		ifFalse: [ markdownExtensions inject: 0 into: [ :mask :next | mask bitOr: next value ]] 
]

{ #category : #rendering }
HdRenderer >> render: aMarkdownString [
	self subclassResponsibility 
]

{ #category : #rendering }
HdRenderer >> render: aMarkdownString returnBlock: aBlock [
	| data buf |
	
	data := aMarkdownString utf8Encoded.
	buf := HdFFILibrary uniqueInstance apiNewBuffer: (2 * data size).
	HdFFILibrary uniqueInstance apiRender: self document with: buf with: data with: data size. 
	^ aBlock value: buf

]

{ #category : #private }
HdRenderer >> renderer [
	self subclassResponsibility 
]

{ #category : #initialization }
HdRenderer >> setMarkdownExtension: aFlag [

	self assert: (aFlag class = HdMarkdownExtensions).
	markdownExtensions ifNil: [ markdownExtensions := OrderedCollection new ].
	markdownExtensions add: aFlag.
]
