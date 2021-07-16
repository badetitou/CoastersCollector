Class {
	#name : #CCCreator,
	#superclass : #CCEntity,
	#instVars : [
		'#coasters => FMMany type: #CCCoaster opposite: #creator',
		'#name => FMProperty'
	],
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCCreator class >> annotation [

	<FMClass: #Creator super: #CCEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #adding }
CCCreator >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
CCCreator >> coasters [
	"Relation named: #coasters type: #CCCoaster opposite: #creator"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
CCCreator >> coasters: anObject [

	<generated>
	coasters value: anObject
]

{ #category : #accessing }
CCCreator >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
CCCreator >> name: anObject [
	<generated>
	name := anObject
]
