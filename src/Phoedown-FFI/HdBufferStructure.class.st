"
I am the C-level structure hoedown_buffer. I exist for private use by the Phoedown library.
"
Class {
	#name : #HdBufferStructure,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ASIZE',
		'OFFSET_BUFFERFREE',
		'OFFSET_DATA',
		'OFFSET_DATAFREE',
		'OFFSET_DATAREALLOC',
		'OFFSET_SIZE',
		'OFFSET_UNIT'
	],
	#category : #'Phoedown-FFI'
}

{ #category : #'field definition' }
HdBufferStructure class >> fieldsDesc [

	"self rebuildFieldAccessors"	
	^ #(
		FFIUInt8 *data;
		FFISizeT size;
		FFISizeT asize;
		FFISizeT unit;
		FFICallback dataRealloc;
		FFICallback dataFree;
		FFICallback bufferFree;
		)
	"buffer.h, structure hoedown_buffer"
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> asize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_ASIZE
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> asize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_ASIZE put: anObject
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> bufferFree [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_BUFFERFREE) asInteger)
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> bufferFree: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_BUFFERFREE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType byte asPointerType
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> dataFree [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_DATAFREE) asInteger)
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> dataFree: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DATAFREE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> dataRealloc [
	"This method was automatically generated"
	^FFICallback forAddress: ((handle pointerAt: OFFSET_DATAREALLOC) asInteger)
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> dataRealloc: anObject [
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_DATAREALLOC
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> size [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_SIZE
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> size: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_SIZE put: anObject
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> unit [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_UNIT
]

{ #category : #'accessing structure variables' }
HdBufferStructure >> unit: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_UNIT put: anObject
]
