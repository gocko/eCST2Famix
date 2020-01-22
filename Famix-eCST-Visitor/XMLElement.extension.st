Extension { #name : #XMLElement }

{ #category : #'*Famix-eCST-Visitor' }
XMLElement >> isUniversalNode [
	^ (self attributeAt: 'line') = '0'
]
