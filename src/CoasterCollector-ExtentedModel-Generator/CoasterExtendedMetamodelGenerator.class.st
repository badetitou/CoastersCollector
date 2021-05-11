Class {
	#name : #CoasterExtendedMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'event',
		'creator'
	],
	#category : #'CoasterCollector-ExtentedModel-Generator'
}

{ #category : #accessing }
CoasterExtendedMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ 'CoasterExtended-Model'
]

{ #category : #accessing }
CoasterExtendedMetamodelGenerator class >> prefix [

	^ #'CCE'
]

{ #category : #accessing }
CoasterExtendedMetamodelGenerator class >> submetamodels [
	^ { CoasterCollectorMetamodelGenerator }
]

{ #category : #definition }
CoasterExtendedMetamodelGenerator >> defineClasses [
	super defineClasses.
	event := builder newClassNamed: #Event.
	
	"Remote entities"
	creator := self remoteEntity: #Creator withPrefix: #CC 
]

{ #category : #definition }
CoasterExtendedMetamodelGenerator >> defineHierarchy [
	super defineHierarchy.
	event --|> creator
]
