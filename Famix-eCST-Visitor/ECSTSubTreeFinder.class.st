"
This is a special small object to find the first subtree whose root match a condition
"
Class {
	#name : #ECSTSubTreeFinder,
	#superclass : #ECSTVisitor,
	#instVars : [
		'condition'
	],
	#category : #'Famix-eCST-Visitor'
}

{ #category : #accessing }
ECSTSubTreeFinder >> condition [
	^ condition
]

{ #category : #accessing }
ECSTSubTreeFinder >> condition: anObject [
	condition := anObject
]

{ #category : #private }
ECSTSubTreeFinder >> find: aString in: anXMLTree [
	condition := aString.
	^ self findIn: anXMLTree
]

{ #category : #private }
ECSTSubTreeFinder >> findAll: aString in: anElement [
	
	condition := aString.
	^anElement nodes collect: [ :each | self findIn: each ]
]

{ #category : #private }
ECSTSubTreeFinder >> findAny: strings in: anXMLTree [
	strings
		do: [ :each | 
			| result |
			condition := each.
			result := self findIn: anXMLTree.
			result isElement ifTrue: [ ^result ]].
		^ XMLNilNode new
]

{ #category : #visiting }
ECSTSubTreeFinder >> findIn: aNode [
	self flag: 'refactor here!'.
	aNode isElement
		ifFalse: [ ^ XMLNilNode new ].
	(self verifiesConditionForChildishNode: aNode)
		ifTrue: [ ^ aNode ]
		ifFalse: [ aNode nonEmptyNodes
				do: [ :each | 
					| result |
					result := self findIn: each.
					result isElement
						ifTrue: [ ^ result ] ].
			^ XMLNilNode new ]
]

{ #category : #visiting }
ECSTSubTreeFinder >> gatherLeaves: anElement [

| leaves |
leaves := OrderedCollection new.


]

{ #category : #visiting }
ECSTSubTreeFinder >> getValue: anElement [
	^ self gatherLeaves: (self removeEmptyChildren: anElement) second
]

{ #category : #visiting }
ECSTSubTreeFinder >> getValugatherLeaves: anElement [
]

{ #category : #private }
ECSTSubTreeFinder >> verifiesConditionForChildishNode: anElement [
	^ anElement	nodes anySatisfy: [ :each |
			self verifiesConditionForToken: each
		]
]

{ #category : #private }
ECSTSubTreeFinder >> verifiesConditionForToken: anElement [
	^ (anElement isElement) and: [ 
		(anElement name = 'token') and: [ 
			(anElement attributeAt: 'text') = condition
		] 
	]

]

{ #category : #private }
ECSTSubTreeFinder >> verifiesConditionInToken: anToken [
"this method verifies if the token is the one we are looking for if we know it is a Token"
	^ (anToken attributeAt: 'text') = condition
		

]

{ #category : #visiting }
ECSTSubTreeFinder >> visitECSTChildElement: anElement [
	anElement nodes
		detect: [self verifiesConditionForChildishNode: anElement]
		ifOne: [ :found | self getValue: found ]
		ifNone: [ nil ].
	
]

{ #category : #visiting }
ECSTSubTreeFinder >> visitElement: aNode [
	aNode isElement ifFalse:[ ^self].		
	( aNode name = 'token' ) ifTrue: [self gatherLeaves: aNode] . 
	( aNode name = 'childElement') ifTrue: [self visitECSTChildElement: aNode]
]
