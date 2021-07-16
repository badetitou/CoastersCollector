Class {
	#name : #CCCountry,
	#superclass : #CCEntity,
	#instVars : [
		'#coasters => FMMany type: #CCCoaster opposite: #country',
		'#name => FMProperty'
	],
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCCountry class >> annotation [

	<FMClass: #Country super: #CCEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #adding }
CCCountry >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
CCCountry >> coasters [
	"Relation named: #coasters type: #CCCoaster opposite: #country"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
CCCountry >> coasters: anObject [

	<generated>
	coasters value: anObject
]

{ #category : #accessing }
CCCountry >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CCCountry >> name: anObject [
	<generated>
	name := anObject
]
