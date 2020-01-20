Class {
	#name : #ECSTSubTreeTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'Famix-eCST-Visitor'
}

{ #category : #running }
ECSTSubTreeTest >> setUp [
	| fileName document  |
	visitor := ECSTGlobalVisitor new.
	fileName := 'C:\!Examples\dpMain.java.xml'.
	document := visitor parseSample: fileName.
	visitor visitDocument: document.
	
	
]

{ #category : #tests }
ECSTSubTreeTest >> testFindIn [
	| theNode |
	theNode := finder find: 'PACKAGE_DECL' in: self visitor rootElement firstElement .
	self assert: ( theNode firstElement attributeAt: 'text') asString equals: 'PACKAGE_DECL'.
]

{ #category : #tests }
ECSTSubTreeTest >> testsetUp [
	self deny: visitor isNil.
	self deny: visitor finder isNil.
	self deny: visitor rootElement isNil
]

{ #category : #accessing }
ECSTSubTreeTest >> visitor [
	^ visitor
]

{ #category : #accessing }
ECSTSubTreeTest >> visitor: anObject [
	visitor := anObject
]
