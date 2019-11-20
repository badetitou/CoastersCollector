Class {
	#name : #CCCreator,
	#superclass : #MooseEntity,
	#instVars : [
		'#name => FMProperty',
		'#coasters => FMMany type: #CCCoaster opposite: #creator'
	],
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCCreator class >> annotation [

	<FMClass: #Creator super: #MooseEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #meta }
CCCreator class >> metamodel [

	<generated>
	^ CCModel metamodel
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
