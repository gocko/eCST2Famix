Class {
	#name : #FamixECSTPackage,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed + FamixTPackage + FamixTWithPackages + FamixTWithTypes',
	#classTraits : 'FamixTNamed classTrait + FamixTPackage classTrait + FamixTWithPackages classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTPackage class >> annotation [

	<FMClass: #Package super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTPackage class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTPackage >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTPackage >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTPackage >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTPackage >> isType [

	<generated>
	^ false
]
