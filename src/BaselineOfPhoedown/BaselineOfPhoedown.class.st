"
BaselineOf.
"
Class {
	#name : #BaselineOfPhoedown,
	#superclass : #BaselineOf,
	#category : #BaselineOfPhoedown
}

{ #category : #baselines }
BaselineOfPhoedown >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [ 
		spec 
			package: 'Phoedown-FFI';
			package: 'Phoedown-API';
			package: 'Phoedown-API-Tests'.
		spec
			group: 'Core' with: #('Phoedown-FFI' 'Phoedown-API');
			group: 'Default' with: #('Phoedown-FFI' 'Phoedown-API' 'Phoedown-API-Tests') ]
]
