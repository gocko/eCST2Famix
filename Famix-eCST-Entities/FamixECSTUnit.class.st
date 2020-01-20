Class {
	#name : #FamixECSTUnit,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed + FamixTPackageable + FamixTWithAttributes + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTNamed classTrait + FamixTPackageable classTrait + FamixTWithAttributes classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTUnit class >> annotation [

	<FMClass: #Unit super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTUnit class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTUnit >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTUnit >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTUnit >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTUnit >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTUnit >> isType [

	<generated>
	^ false
]
