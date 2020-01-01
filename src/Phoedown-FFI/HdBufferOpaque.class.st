"
I am an opaque handle to the 'hoedown_buffer' C-level object. I exist for private use by the Phoedown library. 
"
Class {
	#name : #HdBufferOpaque,
	#superclass : #FFIOpaqueObject,
	#category : #'Phoedown-FFI'
}

{ #category : #finalization }
HdBufferOpaque class >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance 
		ffiCall: #(void hoedown_buffer_free (ExternalAddress aHandle))
]

{ #category : #finalization }
HdBufferOpaque >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance apiFreeBuffer: aHandle
]
