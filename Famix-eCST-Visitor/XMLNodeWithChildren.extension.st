Extension { #name : #XMLNodeWithChildren }

{ #category : #'*Famix-eCST-Visitor' }
XMLNodeWithChildren >> firstElement [
 	^self nonEmptyNodes first 
]

{ #category : #'*Famix-eCST-Visitor' }
XMLNodeWithChildren >> nonEmptyNodes [
	^self nodes select: [ :each | each isElement ]
]
