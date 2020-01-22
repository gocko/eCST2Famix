Class {
	#name : #ECSTVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'eCSTFamixModel',
		'rootElement',
		'finder'
	],
	#category : #'Famix-eCST-Visitor'
}

{ #category : #accessing }
ECSTVisitor >> doesNotUnderstand: aMessage [
	(aMessage selector asString beginsWith: 'visitECST')
	ifTrue: [
		self class compile: aMessage selector , 'anElement
	self flag: ''Should Implement !!!''.'
	]
ifFalse: [ super doesNotUnderstand: aMessage ]
]

{ #category : #accessing }
ECSTVisitor >> eCSTFamixModel [
	^ eCSTFamixModel
]

{ #category : #accessing }
ECSTVisitor >> eCSTFamixModel: anObject [
	eCSTFamixModel := anObject
]

{ #category : #accessing }
ECSTVisitor >> finder [
	^ finder ifNil: [ finder := ECSTSubTreeFinder new ].
]

{ #category : #accessing }
ECSTVisitor >> finder: anObject [
	finder := anObject
]

{ #category : #accessing }
ECSTVisitor >> firstElement: aNodeList [
 	^(aNodeList select: [ :each | each isElement ]) first 
]

{ #category : #accessing }
ECSTVisitor >> rootElement [
	^rootElement 
]

{ #category : #accessing }
ECSTVisitor >> rootElement: aRootElement [
	rootElement := aRootElement
]
