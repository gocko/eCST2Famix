Class {
	#name : #FamixECSTParameter,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed + FamixTParameter + FamixTTypedStructure',
	#classTraits : 'FamixTNamed classTrait + FamixTParameter classTrait + FamixTTypedStructure classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTParameter class >> annotation [

	<FMClass: #Parameter super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTParameter class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTParameter >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTParameter >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTParameter >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTParameter >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTParameter >> isType [

	<generated>
	^ false
]
