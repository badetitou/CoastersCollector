Extension { #name : #CCCountry }

{ #category : #'*Connect-Model-accessing' }
CCCountry >> country [
	"Relation named: #country type: #WCountry opposite: #country"

	<generated>
	<FMProperty: #country type: #WCountry opposite: #country>
	<package: #'Connect-Model'>
	^ self attributeAt: #country ifAbsent: [ nil ]
]

{ #category : #'*Connect-Model-accessing' }
CCCountry >> country: anObject [

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
