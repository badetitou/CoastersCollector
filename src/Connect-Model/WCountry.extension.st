Extension { #name : #WCountry }

{ #category : #'*Connect-Model-accessing' }
WCountry >> country [
	"Relation named: #country type: #CCCountry opposite: #country"

	<generated>
	<derived>
	<FMProperty: #country type: #CCCountry opposite: #country>
	<package: #'Connect-Model'>
	^ self attributeAt: #country ifAbsent: [ nil ]
]

{ #category : #'*Connect-Model-accessing' }
WCountry >> country: anObject [

	<generated>
	(self attributeAt: #country ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self country.
		self attributeAt: #country put: anObject.
		otherSide country: nil ]
	ifNotNil: [ 
		self attributeAt: #country put: anObject.
		anObject country: self ]
]
