Class {
	#name : #WCity,
	#superclass : #WEntity,
	#instVars : [
		'#region => FMOne type: #WRegion opposite: #cities'
	],
	#category : #'World-model-Entities'
}

{ #category : #meta }
WCity class >> annotation [

	<FMClass: #City super: #WEntity>
	<package: #'World-model'>
	<generated>
	^self
]

{ #category : #accessing }
WCity >> region [
	"Relation named: #region type: #WRegion opposite: #cities"

	<generated>
	<container>
	^ region
]

{ #category : #accessing }
WCity >> region: anObject [

	<generated>
	region := anObject
]

{ #category : #navigation }
WCity >> regionGroup [
	<generated>
	<navigation: 'Region'>
	^ MooseSpecializedGroup with: self region
]
