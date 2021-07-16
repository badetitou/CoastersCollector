Class {
	#name : #CCShape,
	#superclass : #CCEntity,
	#instVars : [
		'#coasters => FMMany type: #CCCoaster opposite: #shape'
	],
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCShape class >> annotation [

	<FMClass: #Shape super: #CCEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #adding }
CCShape >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
CCShape >> coasters [
	"Relation named: #coasters type: #CCCoaster opposite: #shape"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
CCShape >> coasters: anObject [

	<generated>
	coasters value: anObject
]
