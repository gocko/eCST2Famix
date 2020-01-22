Class {
	#name : #FamixECSTFuncion,
	#superclass : #MooseEntity,
	#traits : 'FamixTFunction + FamixTNamed + FamixTTypedStructure + FamixTWithLocalVariables + FamixTWithParameters',
	#classTraits : 'FamixTFunction classTrait + FamixTNamed classTrait + FamixTTypedStructure classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-eCST-Entities-Entities'
}

{ #category : #meta }
FamixECSTFuncion class >> annotation [

	<FMClass: #Funcion super: #MooseEntity>
	<package: #'Famix-eCST-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixECSTFuncion class >> metamodel [

	<generated>
	^ FamixECSTModel metamodel
]

{ #category : #testing }
FamixECSTFuncion >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTFuncion >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTFuncion >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixECSTFuncion >> isType [

	<generated>
	^ false
]
