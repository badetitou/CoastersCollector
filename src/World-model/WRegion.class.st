Class {
	#name : #WRegion,
	#superclass : #WEntity,
	#instVars : [
		'#cities => FMMany type: #WCity opposite: #region',
		'#country => FMOne type: #WCountry opposite: #regions',
		'#name => FMProperty'
	],
	#category : #'World-model-Entities'
}

{ #category : #meta }
WRegion class >> annotation [

	<FMClass: #Region super: #WEntity>
	<package: #'World-model'>
	<generated>
	^self
]

{ #category : #adding }
WRegion >> addCity: anObject [
	<generated>
	^ self cities add: anObject
]

{ #category : #accessing }
WRegion >> cities [
	"Relation named: #cities type: #WCity opposite: #region"

	<generated>
	<derived>
	^ cities
]

{ #category : #accessing }
WRegion >> cities: anObject [

	<generated>
	cities value: anObject
]

{ #category : #navigation }
WRegion >> citiesGroup [
	<generated>
	<navigation: 'Cities'>
	^ MooseSpecializedGroup withAll: self cities asSet
]

{ #category : #accessing }
WRegion >> country [
	"Relation named: #country type: #WCountry opposite: #regions"

	<generated>
	<container>
	^ country
]

{ #category : #accessing }
WRegion >> country: anObject [

	<generated>
	country := anObject
]

{ #category : #navigation }
WRegion >> countryGroup [
	<generated>
	<navigation: 'Country'>
	^ MooseSpecializedGroup with: self country
]

{ #category : #accessing }
WRegion >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
WRegion >> name: anObject [
	<generated>
	name := anObject
]
