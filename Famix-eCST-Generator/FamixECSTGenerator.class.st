Class {
	#name : #FamixECSTGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'package',
		'unit',
		'function',
		'localVariable',
		'attribute',
		'parameter',
		'type'
	],
	#category : #'Famix-eCST-Generator'
}

{ #category : #accessing }
FamixECSTGenerator class >> packageName [

	^ #'Famix-eCST-Entities'
]

{ #category : #accessing }
FamixECSTGenerator class >> prefix [

	^ #'FamixECST'
]

{ #category : #accessing }
FamixECSTGenerator class >> submetamodels [
	^ {FamixGenerator}
]

{ #category : #definition }
FamixECSTGenerator >> defineClasses [

	super defineClasses.


	package := builder newClassNamed: #Package.
	unit := builder newClassNamed: #Unit.
	function := builder newClassNamed: #Funcion.
	localVariable := builder newClassNamed: #LocalVariable.
	attribute := builder newClassNamed: #Attribute.
	parameter := builder newClassNamed: #Parameter.
	type := builder newClassNamed: #Type.
	

]

{ #category : #definition }
FamixECSTGenerator >> defineHierarchy [
	super defineHierarchy.
	package --|> #TPackage.
	package --|> #TNamed.
	package --|> #TWithTypes.
	package --|> #TWithPackages.
	
	unit --|> #TNamed.
	unit --|> #TWithAttributes.
	unit --|> #TWithFunctions.
	unit --|> #TPackageable.
	unit --|> #TWithTypes.
	attribute --|> #TNamed.
	attribute --|> #TTypedStructure.
	attribute --|> #TAttribute.
	function --|> #TNamed.
	function --|> #TTypedStructure.
	function --|> #TFunction.
	function --|> #TWithParameters.
	function --|> #TWithLocalVariables.
	parameter --|> #TNamed.
	parameter --|> #TParameter.
	parameter --|> #TTypedStructure.
	localVariable --|> #TNamed.
	localVariable --|> #TLocalVariable.
	localVariable --|> #TTypedStructure.
	type --|> #TNamed.
	type --|> #TType.
	type --|> #TWithTypedStructures
]
