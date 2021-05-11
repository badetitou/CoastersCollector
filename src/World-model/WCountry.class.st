Class {
	#name : #WCountry,
	#superclass : #WEntity,
	#instVars : [
		'#continent => FMOne type: #WContinent opposite: #countries',
		'#name => FMProperty',
		'#regions => FMMany type: #WRegion opposite: #country'
	],
	#category : #'World-model-Entities'
}

{ #category : #meta }
WCountry class >> annotation [

	<FMClass: #Country super: #WEntity>
	<package: #'World-model'>
	<generated>
	^self
]

{ #category : #adding }
WCountry >> addRegion: anObject [
	<generated>
	^ self regions add: anObject
]

{ #category : #accessing }
WCountry >> continent [
	"Relation named: #continent type: #WContinent opposite: #countries"

	<generated>
	<container>
	^ continent
]

{ #category : #accessing }
WCountry >> continent: anObject [

	<generated>
	continent := anObject
]

{ #category : #navigation }
WCountry >> continentGroup [
	<generated>
	<navigation: 'Continent'>
	^ MooseSpecializedGroup with: self continent
]

{ #category : #accessing }
WCountry >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
WCountry >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
WCountry >> regions [
	"Relation named: #regions type: #WRegion opposite: #country"

	<generated>
	<derived>
	^ regions
]

{ #category : #accessing }
WCountry >> regions: anObject [

	<generated>
	regions value: anObject
]

{ #category : #navigation }
WCountry >> regionsGroup [
	<generated>
	<navigation: 'Regions'>
	^ MooseSpecializedGroup withAll: self regions asSet
]
