"
Unit tests.
"
Class {
	#name : #HdHtmlRendererTest,
	#superclass : #TestCase,
	#instVars : [
		'r'
	],
	#category : #'Phoedown-API-Tests'
}

{ #category : #initialization }
HdHtmlRendererTest >> setUp [ 

	super setUp.
	r := HdHtmlRenderer new
]

{ #category : #tests }
HdHtmlRendererTest >> testBitMaskItemOne [

	r htmlFlagsArray: (Array with: HdHtmlFlags SkipHtml).
	self assert: r htmlFlagsBitMask equals: 1.

	r markdownExtensionsArray: (Array with: HdMarkdownExtensions Tables).
	self assert: r markdownExtensionsBitMask equals: 1
]

{ #category : #tests }
HdHtmlRendererTest >> testBitMaskItemsOneTwo [

	r htmlFlagsArray: (Array with: HdHtmlFlags SkipHtml with: HdHtmlFlags Escape).
	self assert: r htmlFlagsBitMask equals: 3.

	r markdownExtensionsArray: (Array 
		with: HdMarkdownExtensions Tables
		with: HdMarkdownExtensions FencedCode).
	self assert: r markdownExtensionsBitMask equals: 3
 
]

{ #category : #tests }
HdHtmlRendererTest >> testBitMaskZero [

	self assert: r htmlFlagsBitMask equals: 0.
	self assert: r markdownExtensionsBitMask equals: 0
]

{ #category : #tests }
HdHtmlRendererTest >> testSetHtmlFlagBad [

	self should: [ r setHtmlFlag: 42 ]
		raise: AssertionFailure

]

{ #category : #tests }
HdHtmlRendererTest >> testSetHtmlFlagOne [

	r setHtmlFlag: HdHtmlFlags SkipHtml.
	self assert: r htmlFlagsBitMask equals: 1.


]

{ #category : #tests }
HdHtmlRendererTest >> testSetHtmlFlagOneTwo [

	r setHtmlFlag: HdHtmlFlags SkipHtml.
	r setHtmlFlag: HdHtmlFlags Escape.
	self assert: r htmlFlagsBitMask equals: 3.


]

{ #category : #tests }
HdHtmlRendererTest >> testSetMarkdownExtensionBad [

	self should: [ r setMarkdownExtension: 42 ]
		raise: AssertionFailure

]

{ #category : #tests }
HdHtmlRendererTest >> testSetMarkdownExtensiongOne [

	r setMarkdownExtension: HdMarkdownExtensions Tables.
	self assert: r markdownExtensionsBitMask equals: 1.


]

{ #category : #tests }
HdHtmlRendererTest >> testSetMarkdownExtensiongOneThree [

	r setMarkdownExtension: HdMarkdownExtensions Tables.
	r setMarkdownExtension: HdMarkdownExtensions Footnotes.
	self assert: r markdownExtensionsBitMask equals: 5.


]
