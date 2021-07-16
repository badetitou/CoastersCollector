Class {
	#name : #CCEntity,
	#superclass : #MooseEntity,
	#category : #'CoasterCollector-Model-Entities'
}

{ #category : #meta }
CCEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'CoasterCollector-Model'>
	<generated>
	^self
]

{ #category : #meta }
CCEntity class >> metamodel [

	<generated>
	^ CCModel metamodel
]
