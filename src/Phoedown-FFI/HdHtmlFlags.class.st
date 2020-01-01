"
I am the C-level enumeration hoedown_html_flags.
"
Class {
	#name : #HdHtmlFlags,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'Escape',
		'HardWrap',
		'SkipHtml',
		'UseXHtml'
	],
	#category : #'Phoedown-FFI'
}

{ #category : #'accessing enum' }
HdHtmlFlags class >> Escape [
	"This method was automatically generated"
	^ Escape
]

{ #category : #'accessing enum' }
HdHtmlFlags class >> HardWrap [
	"This method was automatically generated"
	^ HardWrap
]

{ #category : #'accessing enum' }
HdHtmlFlags class >> SkipHtml [
	"This method was automatically generated"
	^ SkipHtml
]

{ #category : #'accessing enum' }
HdHtmlFlags class >> UseXHtml [
	"This method was automatically generated"
	^ UseXHtml
]

{ #category : #'enum declaration' }
HdHtmlFlags class >> enumDecl [
	^ #(
		SkipHtml 	1
		Escape		2  	
		HardWrap 	4
		UseXHtml 	8
		) 

]

{ #category : #initialization }
HdHtmlFlags class >> initialize [
	self initializeEnumeration;
		rebuildEnumAccessors.
]
