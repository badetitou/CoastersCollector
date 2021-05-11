Class {
	#name : #WContinent,
	#superclass : #WEntity,
	#instVars : [
		'#countries => FMMany type: #WCountry opposite: #continent',
		'#name => FMProperty'
	],
	#category : #'World-model-Entities'
}

{ #category : #meta }
WContinent class >> annotation [

	<FMClass: #Continent super: #WEntity>
	<package: #'World-model'>
	<generated>
	^self
]

{ #category : #adding }
WContinent >> addCountry: anObject [
	<generated>
	^ self countries add: anObject
]

{ #category : #accessing }
WContinent >> countries [
	"Relation named: #countries type: #WCountry opposite: #continent"

	<generated>
	<derived>
	^ countries
]

{ #category : #accessing }
WContinent >> countries: anObject [

	<generated>
	countries value: anObject
]

{ #category : #navigation }
WContinent >> countriesGroup [
	<generated>
	<navigation: 'Countries'>
	^ MooseSpecializedGroup withAll: self countries asSet
]

{ #category : #accessing }
WContinent >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
WContinent >> name: anObject [
	<generated>
	name := anObject
]
