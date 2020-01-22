Class {
	#name : #FamixECSTAttribute,
	#superclass : #MooseEntity,
	#traits : 'FamixTAttribute + FamixTNamed + FamixTTypedStructure',
	#classTraits : 'FamixTAttribute classTrait + FamixTNamed classTrait + FamixTTypedStructure classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTAttribute class >> annotation [

	<FMClass: #Attribute super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTAttribute class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTAttribute >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTAttribute >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTAttribute >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTAttribute >> isType [

	<generated>
	^ false
]
