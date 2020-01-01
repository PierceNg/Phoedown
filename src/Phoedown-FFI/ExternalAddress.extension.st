Extension { #name : #ExternalAddress }

{ #category : #'*Phoedown-FFI' }
ExternalAddress >> getHandle [
	^ self asExternalPointer
]
