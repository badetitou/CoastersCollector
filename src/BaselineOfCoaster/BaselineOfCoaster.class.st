Class {
	#name : #BaselineOfCoaster,
	#superclass : #BaselineOf,
	#category : #BaselineOfCoaster
}

{ #category : #baselines }
BaselineOfCoaster >> baseline: spec [

	"Packages"

	<baseline>
	self definePackages: spec.
	"Groups"
	self defineGroups: spec
]

{ #category : #baselines }
BaselineOfCoaster >> defineGroups: spec [
]

{ #category : #baselines }
BaselineOfCoaster >> definePackages: spec [

	spec
		package: 'World-Model-Generator';
		package: 'World-Model';
		package: 'Connect-Model-Generator' with: [ spec requires: #( 'CoasterCollector-Model-Generator' 'World-Model-Generator' ) ];
		package: 'Connect-Model' with: [ spec requires: #( 'CoasterCollector-Model' 'World-Model' ) ];
		package: 'CoasterCollector-ExtendedModel-Generator' with: [ spec requires: #( 'CoasterCollector-Model-Generator' ) ];
		package: 'CoasterExtended-Model' with: [ spec requires: #( 'CoasterCollector-Model' ) ];
		package: 'CoasterCollector-Model-Generator';
		package: 'CoasterCollector-Model'
]
