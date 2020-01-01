"
I am an opaque handle to the 'hoedown_renderer' C-level object. I exist for private use by the Phoedown library. 
"
Class {
	#name : #HdRendererOpaque,
	#superclass : #FFIOpaqueObject,
	#category : #'Phoedown-FFI'
}

{ #category : #finalization }
HdRendererOpaque class >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance 
		ffiCall: #(void hoedown_renderer_free (ExternalAddress aHandle))
]

{ #category : #finalization }
HdRendererOpaque >> finalizeResourceData: aHandle [
	HdFFILibrary uniqueInstance apiFreeHtmlRenderer: aHandle
]
