Class {
	#name : #CCCountry,
	#superclass : #MooseEntity,
	#instVars : [
		'#name => FMProperty',
		'#coasters => FMMany type: #CCCoaster opposite: #country'
	],
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCCountry class >> annotation [

	<FMClass: #Country super: #MooseEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #meta }
CCCountry class >> metamodel [

	<generated>
	^ CCModel metamodel
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
