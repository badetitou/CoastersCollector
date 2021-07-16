Class {
	#name : #WEntity,
	#superclass : #MooseEntity,
	#category : #'World-Model-Entities'
}

{ #category : #meta }
WEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'World-Model'>
	<generated>
	^self
]

{ #category : #meta }
WEntity class >> metamodel [

	<generated>
	^ WModel metamodel
]
