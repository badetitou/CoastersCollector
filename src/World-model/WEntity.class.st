Class {
	#name : #WEntity,
	#superclass : #MooseEntity,
	#category : #'World-model-Entities'
}

{ #category : #meta }
WEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'World-model'>
	<generated>
	^self
]

{ #category : #meta }
WEntity class >> metamodel [

	<generated>
	^ WModel metamodel
]
