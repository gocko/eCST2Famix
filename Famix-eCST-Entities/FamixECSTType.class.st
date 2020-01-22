Class {
	#name : #FamixECSTType,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed + FamixTType + FamixTWithTypedStructures',
	#classTraits : 'FamixTNamed classTrait + FamixTType classTrait + FamixTWithTypedStructures classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTType class >> annotation [

	<FMClass: #Type super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTType class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTType >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTType >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTType >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTType >> isStructuralEntity [

	<generated>
	^ false
]
