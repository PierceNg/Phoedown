"
I am an opaque handle to the 'hoedown_document' C-level object. I exist for private use by the Phoedown library. 
"
Class {
	#name : #HdDocumentOpaque,
	#superclass : #FFIOpaqueObject,
	#category : #'Phoedown-FFI'
}

{ #category : #finalization }
HdDocumentOpaque class >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance 
		ffiCall: #(void hoedown_document_free (ExternalAddress aHandle))
]

{ #category : #finalization }
HdDocumentOpaque >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance apiFreeDocument: aHandle
]
