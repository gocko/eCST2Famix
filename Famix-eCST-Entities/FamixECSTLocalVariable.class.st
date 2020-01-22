Class {
	#name : #FamixECSTLocalVariable,
	#superclass : #MooseEntity,
	#traits : 'FamixTLocalVariable + FamixTNamed + FamixTTypedStructure',
	#classTraits : 'FamixTLocalVariable classTrait + FamixTNamed classTrait + FamixTTypedStructure classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTLocalVariable class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTLocalVariable >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTLocalVariable >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTLocalVariable >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTLocalVariable >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTLocalVariable >> isType [

	<generated>
	^ false
]
