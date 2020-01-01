"
I am the C-level structure hoedown_renderer. All my structure members, execpt one, are callbacks. I am passed into Hoedown's parser, which invokes the callbacks as it parses the Markdown text provided. 
"
Class {
	#name : #HdRendererStructure,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_AUTOLINK',
		'OFFSET_BLOCKCODE',
		'OFFSET_BLOCKHTML',
		'OFFSET_BLOCKQUOTE',
		'OFFSET_CODESPAN',
		'OFFSET_DOCFOOTER',
		'OFFSET_DOCHEADER',
		'OFFSET_DOUBLEEMPHASIS',
		'OFFSET_EMPHASIS',
		'OFFSET_ENTITY',
		'OFFSET_FOOTNOTEDEF',
		'OFFSET_FOOTNOTEREF',
		'OFFSET_FOOTNOTES',
		'OFFSET_HEADER',
		'OFFSET_HIGHLIGHT',
		'OFFSET_HRULE',
		'OFFSET_IMAGE',
		'OFFSET_LINEBREAK',
		'OFFSET_LINK',
		'OFFSET_LIST',
		'OFFSET_LISTITEM',
		'OFFSET_MATH',
		'OFFSET_NORMALTEXT',
		'OFFSET_OPAQUE',
		'OFFSET_PARAGRAPH',
		'OFFSET_QUOTE',
		'OFFSET_RAWHTML',
		'OFFSET_STRIKETHROUGH',
		'OFFSET_SUPERSCRIPT',
		'OFFSET_TABLE',
		'OFFSET_TABLEBODY',
		'OFFSET_TABLECELL',
		'OFFSET_TABLEHEADER',
		'OFFSET_TABLEROW',
		'OFFSET_TRIPLEEMPHASIS',
		'OFFSET_UNDERLINE'
	],
	#category : #'Phoedown-FFI'
}

{ #category : #'field definition' }
HdRendererStructure class >> fieldsDesc [

	"self rebuildFieldAccessors"	
	^ #(
		ExternalAddress opaque;
		FFICallback blockcode;
		FFICallback blockquote;
		FFICallback header; 
		FFICallback 	hrule; 
		FFICallback list; 
		FFICallback listitem; 
		FFICallback paragraph; 
		FFICallback table; 
		FFICallback tableHeader; 
		FFICallback tableBody; 
		FFICallback tableRow; 
		FFICallback tableCell; 
		FFICallback footnotes; 
		FFICallback footnoteDef; 
		FFICallback blockhtml; 
		FFICallback autolink; 
		FFICallback codespan; 
		FFICallback doubleEmphasis; 
		FFICallback emphasis; 
		FFICallback underline; 
		FFICallback highlight; 
		FFICallback quote; 
		FFICallback image; 
		FFICallback linebreak; 
		FFICallback link; 
		FFICallback tripleEmphasis; 
		FFICallback strikethrough; 
		FFICallback superscript; 
		FFICallback footnoteRef; 
		FFICallback math; 
		FFICallback rawHtml; 
		FFICallback entity; 
		FFICallback normalText; 
		FFICallback docHeader; 
		FFICallback docFooter 
		)
	"document.h, structure hoedown_renderer"
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> autolink [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_AUTOLINK) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> autolink: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_AUTOLINK
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockcode [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_BLOCKCODE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockcode: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_BLOCKCODE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockhtml [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_BLOCKHTML) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockhtml: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_BLOCKHTML
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockquote [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_BLOCKQUOTE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> blockquote: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_BLOCKQUOTE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> codespan [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_CODESPAN) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> codespan: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_CODESPAN
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> docFooter [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_DOCFOOTER) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> docFooter: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DOCFOOTER
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> docHeader [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_DOCHEADER) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> docHeader: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DOCHEADER
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> doubleEmphasis [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_DOUBLEEMPHASIS) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> doubleEmphasis: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DOUBLEEMPHASIS
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> emphasis [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_EMPHASIS) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> emphasis: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_EMPHASIS
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> entity [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_ENTITY) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> entity: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_ENTITY
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnoteDef [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_FOOTNOTEDEF) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnoteDef: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FOOTNOTEDEF
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnoteRef [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_FOOTNOTEREF) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnoteRef: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FOOTNOTEREF
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnotes [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_FOOTNOTES) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> footnotes: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_FOOTNOTES
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> header [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_HEADER) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> header: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_HEADER
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> highlight [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_HIGHLIGHT) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> highlight: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_HIGHLIGHT
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> hrule [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_HRULE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> hrule: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_HRULE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> image [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_IMAGE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> image: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_IMAGE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #initialization }
HdRendererStructure >> initialize [
	self setNullCallbacks
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> linebreak [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_LINEBREAK) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> linebreak: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_LINEBREAK
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> link [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_LINK) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> link: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_LINK
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> list [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_LIST) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> list: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_LIST
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> listitem [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_LISTITEM) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> listitem: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_LISTITEM
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> math [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_MATH) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> math: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_MATH
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> normalText [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_NORMALTEXT) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> normalText: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_NORMALTEXT
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> opaque [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_OPAQUE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> opaque: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_OPAQUE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> paragraph [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_PARAGRAPH) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> paragraph: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PARAGRAPH
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #printing }
HdRendererStructure >> printOn: aStream [
	aStream nextPut: $a;
		nextPut: Character space;
		nextPutAll: self class asString
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> quote [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_QUOTE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> quote: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_QUOTE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> rawHtml [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_RAWHTML) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> rawHtml: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_RAWHTML
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #initialization }
HdRendererStructure >> setNullCallbacks [
	| rejects |
	rejects := #(#setNullCallbacks: #printOn: #opaque:).
	self setNullCallbacks: ((self class selectorsWithArgs: 1) reject: [ :x | 
		rejects includes: x ]).
	self opaque: ExternalAddress null asExternalPointer.
]

{ #category : #initialization }
HdRendererStructure >> setNullCallbacks: selectorArray [
	selectorArray do: [ :selector |
		self perform: selector with: nil ]
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> strikethrough [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_STRIKETHROUGH) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> strikethrough: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_STRIKETHROUGH
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> superscript [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_SUPERSCRIPT) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> superscript: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_SUPERSCRIPT
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> table [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TABLE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> table: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TABLE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableBody [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TABLEBODY) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableBody: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TABLEBODY
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableCell [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TABLECELL) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableCell: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TABLECELL
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableHeader [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TABLEHEADER) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableHeader: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TABLEHEADER
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableRow [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TABLEROW) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tableRow: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TABLEROW
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tripleEmphasis [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_TRIPLEEMPHASIS) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> tripleEmphasis: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_TRIPLEEMPHASIS
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> underline [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_UNDERLINE) asInteger)
]

{ #category : #'accessing structure variables' }
HdRendererStructure >> underline: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_UNDERLINE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]
