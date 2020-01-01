"
I am the C-level enumeration hoedown_extensions.
"
Class {
	#name : #HdMarkdownExtensions,
	#superclass : #FFIExternalEnumeration,
	#classVars : [
		'AutoLink',
		'DisableIndentedCode',
		'FencedCode',
		'Footnotes',
		'Highlight',
		'Math',
		'MathExplicit',
		'NoIntraEmphasis',
		'Quote',
		'SpaceHeaders',
		'StrikeThrough',
		'Superscript',
		'Tables',
		'Underline'
	],
	#category : #'Phoedown-FFI'
}

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> AutoLink [
	"This method was automatically generated"
	^ AutoLink
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> DisableIndentedCode [
	"This method was automatically generated"
	^ DisableIndentedCode
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> FencedCode [
	"This method was automatically generated"
	^ FencedCode
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Footnotes [
	"This method was automatically generated"
	^ Footnotes
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Highlight [
	"This method was automatically generated"
	^ Highlight
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Math [
	"This method was automatically generated"
	^ Math
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> MathExplicit [
	"This method was automatically generated"
	^ MathExplicit
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> NoIntraEmphasis [
	"This method was automatically generated"
	^ NoIntraEmphasis
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Quote [
	"This method was automatically generated"
	^ Quote
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> SpaceHeaders [
	"This method was automatically generated"
	^ SpaceHeaders
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> StrikeThrough [
	"This method was automatically generated"
	^ StrikeThrough
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Superscript [
	"This method was automatically generated"
	^ Superscript
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Tables [
	"This method was automatically generated"
	^ Tables
]

{ #category : #'accessing enum' }
HdMarkdownExtensions class >> Underline [
	"This method was automatically generated"
	^ Underline
]

{ #category : #'enum declaration' }
HdMarkdownExtensions class >> enumDecl [
	^ #(
		Tables 					1
		FencedCode				2  	
		Footnotes 				4
		AutoLink 					8
		StrikeThrough 			16
		Underline 				32
		Highlight 				64
		Quote 						128
		Superscript 				256
		Math 						512
		"not used 				1024"
		NoIntraEmphasis 		2048
		SpaceHeaders 			4096
		MathExplicit 			8192
		DisableIndentedCode 	16384
		) 

]

{ #category : #initialization }
HdMarkdownExtensions class >> initialize [
	self initializeEnumeration;
		rebuildEnumAccessors.
]
