Class {
	#name : #CMModel,
	#superclass : #MooseModel,
	#category : #'Connect-Model-Model'
}

{ #category : #accessing }
CMModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'World-Model' #'CoasterCollector-Model')
]

{ #category : #meta }
CMModel class >> annotation [
	<FMClass: #CMModel super: #MooseModel>
	<package: #'Connect-Model'>
	<generated>
]
