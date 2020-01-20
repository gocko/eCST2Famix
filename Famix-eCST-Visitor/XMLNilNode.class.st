Class {
	#name : #XMLNilNode,
	#superclass : #XMLNode,
	#category : #'Famix-eCST-Visitor'
}

{ #category : #testing }
XMLNilNode >> firstElement [ 
	^self
]

{ #category : #testing }
XMLNilNode >> isElement [ 
	^false
]

{ #category : #testing }
XMLNilNode >> isUniversalNode [ 
	^false
]

{ #category : #testing }
XMLNilNode >> nonEmptyNodes [
	^OrderedCollection new
]
