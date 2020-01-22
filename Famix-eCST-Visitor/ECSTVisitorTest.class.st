Class {
	#name : #ECSTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'Famix-eCST-Visitor'
}

{ #category : #running }
ECSTVisitorTest >> setUp [
	| fileName document |
	visitor := ECSTGlobalVisitor new.
	fileName := 'C:\!Examples\dpMain.java.xml'.
	document := visitor parseSample: fileName.
	visitor visitDocument: document.
	
]

{ #category : #running }
ECSTVisitorTest >> testVisitDocument [
	
	self assert: (self visitor subTreeVisitor rootElement firstElement attributeAt: 'text') asString equals: 'PACKAGE_DECL' 
]

{ #category : #running }
ECSTVisitorTest >> testVisitECSTFUNCTION_DECL [
	| functionNames |
	
	functionNames := (visitor eCSTFamixModel allWithType: FamixECSTFuncion )
		collect: [ :each | each name ].
	self assert: functionNames size equals: 2.
	self assertCollection: functionNames includesAll: {'main'.'randomEtat'}
]

{ #category : #running }
ECSTVisitorTest >> testVisitECSTPACKAGE_DECL [
	| packageNames packages |
	self assert: visitor eCSTFamixModel class equals: FamixECSTModel.
	packages := visitor eCSTFamixModel allWithType: FamixECSTPackage.
	packageNames := packages collect: [ :each | each name ].
	self assert: packageNames size equals: 2.
	self
		assertCollection: packageNames
		includesAll: {'dp' . 'tp_parking'}.
	self
		assert: (packages detect: [ :each | each name = 'dp' ]) packageOwner
		equals: (packages detect: [ :each | each name = 'tp_parking' ])
]

{ #category : #running }
ECSTVisitorTest >> testVisitUnit [
	| unitNames units |
	units := visitor eCSTFamixModel allWithType: FamixECSTUnit.
	unitNames := units collect: [ :each | each name ].
	self assert: unitNames size equals: 1.
	self assert: units first parentPackage name equals: 'dp'.
	self assertCollection: unitNames includesAll: {'Main'}
]

{ #category : #accessing }
ECSTVisitorTest >> visitor [
	^ visitor
]

{ #category : #accessing }
ECSTVisitorTest >> visitor: anObject [
	visitor := anObject
]
