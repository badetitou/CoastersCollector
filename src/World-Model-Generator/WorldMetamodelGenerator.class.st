Class {
	#name : #WorldMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'continent',
		'region',
		'country',
		'city'
	],
	#category : #'World-Model-Generator'
}

{ #category : #accessing }
WorldMetamodelGenerator class >> packageName [

	<ignoreForCoverage>
	^ #'World-model'
]

{ #category : #accessing }
WorldMetamodelGenerator class >> prefix [

	<ignoreForCoverage>
	^ #'W'
]

{ #category : #definition }
WorldMetamodelGenerator >> defineClasses [
	super defineClasses.
	continent := builder newClassNamed: #Continent.
	region := builder newClassNamed: #Region.
	country := builder newClassNamed: #Country.
	city := builder newClassNamed: #City 
]

{ #category : #definition }
WorldMetamodelGenerator >> defineRelations [

	super defineRelations.
	continent <>-* country.
	country <>-* region.
	region <>-* city
]
