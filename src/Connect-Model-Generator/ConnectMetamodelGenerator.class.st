Class {
	#name : #ConnectMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'coasterCountry',
		'worldCountry'
	],
	#category : #'Connect-Model-Generator'
}

{ #category : #accessing }
ConnectMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ #'Connect-Model'
]

{ #category : #accessing }
ConnectMetamodelGenerator class >> prefix [

	<ignoreForCoverage>
	^ #'CM'
]

{ #category : #accessing }
ConnectMetamodelGenerator class >> submetamodels [

	^ { WorldMetamodelGenerator . CoasterCollectorMetamodelGenerator }
]

{ #category : #definition }
ConnectMetamodelGenerator >> defineClasses [

	super defineClasses.
	coasterCountry := self remoteEntity: #Country withPrefix: #CC.
	worldCountry := self remoteEntity: #Country withPrefix: #W
]

{ #category : #definition }
ConnectMetamodelGenerator >> defineRelations [

	super defineRelations.
	coasterCountry - worldCountry
]
