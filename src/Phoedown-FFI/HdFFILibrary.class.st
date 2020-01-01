"
I am the FFI to libhoedown.
"
Class {
	#name : #HdFFILibrary,
	#superclass : #FFILibrary,
	#classVars : [
		'TypeMap'
	],
	#category : #'Phoedown-FFI'
}

{ #category : #private }
HdFFILibrary class >> ffiBindingOf: aTypeName [
	^ TypeMap at: aTypeName ifAbsent: [ super ffiBindingOf: aTypeName ]
]

{ #category : #'class initialization' }
HdFFILibrary class >> initialize [
	self initializeTypeMap
]

{ #category : #initialization }
HdFFILibrary class >> initializeTypeMap [

	TypeMap := Dictionary newFromPairs: #(
		hoedown_renderer    HdRendererOpaque
		hoedown_document    HdDocumentOpaque
		hoedown_buffer      HdBufferOpaque
	)
]

{ #category : #private }
HdFFILibrary class >> reset [ 	
	uniqueInstance := nil
]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiBufferInCallbackToString: buffer [
	^ self ffiCall: #(String hoedown_buffer_cstr (ExternalAddress buffer))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiBufferToString: buffer [
	^ self ffiCall: #(void* hoedown_buffer_cstr (hoedown_buffer* buffer))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiFreeBuffer: buffer [
	^ self ffiCall: #(void hoedown_buffer_free (hoedown_buffer* buffer))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiFreeDocument: document [
	^ self ffiCall: #(void hoedown_document_free (hoedown_document* document))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiFreeHtmlRenderer: renderer [
	^ self ffiCall: #(void hoedown_html_renderer_free (hoedown_renderer* renderer))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiNewBuffer: aSize [
	^ self ffiCall: #(hoedown_buffer* hoedown_buffer_new (FFISizeT aSize))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiNewDocumentC: renderer with: extensions with: maxNesting [
	^ self ffiCall: #(hoedown_document* hoedown_document_new (
		hoedown_renderer* renderer, 
		int extensions, 
		FFISizeT maxNesting))

"
C function signature:
hoedown_document* hoedown_document_new(
	const hoedown_renderer*,
	hoedown_extensions,
	size_t)

hoedown_extensions is an enum to be reified by HdExtensions."

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiNewDocumentSt: renderer with: extensions with: maxNesting [
	^ self ffiCall: #(hoedown_document* hoedown_document_new (
		ExternalAddress renderer, 
		int extensions, 
		FFISizeT maxNesting))

"
C function signature:
hoedown_document* hoedown_document_new(
	const hoedown_renderer*,
	hoedown_extensions,
	size_t)

hoedown_extensions is an enum to be reified by HdExtensions."

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiNewHtmlRenderer: flags with: nestingLevel [
	^ self ffiCall: #(hoedown_renderer* hoedown_html_renderer_new (int flags, int nestingLevel))

"
C function signature:
hoedown_renderer* hoedown_html_renderer_new(
	hoedown_html_flags,
	int)

hoedown_html_flags is an enum reified by HdHtmlFlags."

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiPutString: string to: buffer [
	^ self ffiCall: #(void hoedown_buffer_puts (hoedown_buffer* buffer, String string))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> apiRender: document with: buffer with: markdownData with: markdownDataSize [
	^ self ffiCall: #(void hoedown_document_render (
		hoedown_document* document, 
		hoedown_buffer* buffer,
		void* markdownData, 
		FFISizeT markdownDataSize))

]

{ #category : #'private-ffi-calls' }
HdFFILibrary >> bufferToString: buffer [
	^ (self apiBufferToString: buffer) readStringUTF8 
]

{ #category : #api }
HdFFILibrary >> contentFromCallback: buffer [
	^ self apiBufferInCallbackToString: buffer

]

{ #category : #'accessing platform' }
HdFFILibrary >> macModuleName [ 
	^ 'libhoedown.dylib'
]

{ #category : #'accessing platform' }
HdFFILibrary >> unixModuleName [
	^ 'hoedown'
]

{ #category : #'accessing platform' }
HdFFILibrary >> win32ModuleName [ 
	^ 'libhoedown.dll'
]

{ #category : #api }
HdFFILibrary >> writeString: string to: buffer [
	^ self apiPutString: string to: buffer

]
