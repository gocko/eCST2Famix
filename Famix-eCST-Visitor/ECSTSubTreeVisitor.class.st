Class {
	#name : #ECSTSubTreeVisitor,
	#superclass : #ECSTVisitor,
	#category : #'Famix-eCST-Visitor'
}

{ #category : #'as yet unclassified' }
ECSTSubTreeVisitor >> visitECSTNameChildren: anElement [
	| allNames allNameNodes names |
	
	allNames:= OrderedCollection new.
	
	allNameNodes := anElement nonEmptyNodes allButFirst.
	allNames add: (	allNameNodes first firstElement attributeAt: 'text').
	names := allNameNodes allButFirst select: [ :each | 
		(self finder find: 'NAME' in: each) isElement ].
	
	allNames addAll: 	(names collect: [ :each | self visitECSTNameChildren: each ]).
	^allNames

]

{ #category : #visiting }
ECSTSubTreeVisitor >> visitElement: aRootElement [
	| elementType nodes selector |
	aRootElement isElement ifFalse: [ ^ self ].	
	nodes := aRootElement nonEmptyNodes.
	elementType := nodes first attributeAt: 'text' .
	selector :=  'visitECST' , elementType asLowercase capitalized, 'Children:'.
	self perform: selector asSymbol with: nodes allButFirst .
]
