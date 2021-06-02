Class {
	#name : #CoasterExtendedExtendedMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'coaster',
		'oval'
	],
	#category : #'CoasterCollector-ExtentedExtendedModel-Generator'
}

{ #category : #accessing }
CoasterExtendedExtendedMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ 'CoasterExtendedExtended-Model'
]

{ #category : #accessing }
CoasterExtendedExtendedMetamodelGenerator class >> prefix [
	^ #'CCEE'
]

{ #category : #accessing }
CoasterExtendedExtendedMetamodelGenerator class >> submetamodels [
	^ { CoasterExtendedMetamodelGenerator  }
]

{ #category : #definition }
CoasterExtendedExtendedMetamodelGenerator >> defineClasses [

	super defineClasses.
	coaster := self remoteEntity: #Coaster withPrefix: #CC.
	oval :=  self remoteEntity: #Oval withPrefix: #CC
]

{ #category : #definition }
CoasterExtendedExtendedMetamodelGenerator >> defineProperties [
	super defineProperties.
	coaster property: #price type: #number
]

{ #category : #definition }
CoasterExtendedExtendedMetamodelGenerator >> defineRelations [
	super defineRelations.
	coaster - oval
]
