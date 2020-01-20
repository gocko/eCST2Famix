Class {
	#name : #ECSTGlobalVisitor,
	#superclass : #ECSTVisitor,
	#instVars : [
		'subTreeVisitor'
	],
	#category : #'Famix-eCST-Visitor'
}

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> ensurePackages: names [
	| package |
	(self eCSTFamixModel allWithType: FamixECSTPackage)
		detect: [ :each | each name = names first ]
		ifFound: [ :p | package := p ]
		ifNone: [ package := FamixECSTPackage new
				name: names first;
				mooseModel: eCSTFamixModel;
				yourself ].
	self ensurePackages: names allButFirst in: package
]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> ensurePackages: names in: anOwner [
	| package |
	names ifEmpty: [ ^anOwner ].
	anOwner packages
		detect: [ :each | each name = names first ]
		ifFound: [ :p | package := p ]
		ifNone: [ package := FamixECSTPackage new
				name: names first;
				packageOwner: anOwner;
				mooseModel: eCSTFamixModel;
				yourself ].
	^self ensurePackages: names allButFirst in: package
]

{ #category : #accessing }
ECSTGlobalVisitor >> initialize [
	super initialize .
	subTreeVisitor := ECSTSubTreeVisitor new.

]

{ #category : #accessing }
ECSTGlobalVisitor >> initialize: aFile [
	self initialize.
	self parseSample: aFile.
]

{ #category : #accessing }
ECSTGlobalVisitor >> parseSample: aFile [
	^(aFile asFileReference readStreamDo: [ :stream | XMLDOMParser parse: stream ])
]

{ #category : #accessing }
ECSTGlobalVisitor >> subTreeVisitor [
	^ subTreeVisitor
]

{ #category : #accessing }
ECSTGlobalVisitor >> subTreeVisitor: anObject [
	subTreeVisitor := anObject
]

{ #category : #accessing }
ECSTGlobalVisitor >> visitDocument: aDocument [
	eCSTFamixModel := FamixECSTModel new
		metamodel: FamixECSTModel metamodel;
		yourself.
		
	self rootElement: aDocument.
"	self visitElement: (aDocument nodes first ) ."
	self subTreeVisitor rootElement: (self finder find: 'PACKAGE_DECL' in:  aDocument nodes first) .
	self visitECSTPACKAGE_DECL: subTreeVisitor rootElement.
	
]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTARGUMENT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTARGUMENT_LIST:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTASSIGNMENT_STATEMENT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTASSIGN_OPERATOR:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTBLOCK_SCOPE:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTBRANCH:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTBRANCH_STATEMENT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCAST_EXPRESSION:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCOMPARISON_OPERATOR:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCOMPILATION_UNIT:anElement [
	

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCONCRETE_UNIT_DECL:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCONDITION:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTCONST:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTChildElement:anElement [
	anElement nodes do: [ :each | self visitElement: each ]
]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTFORMAL_PARAM_LIST:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTFUNCTION_CALL:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTFUNCTION_DECL:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTINIT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTJUMP_STATEMENT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTKEYWORD:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTLOOP_STATEMENT:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTMODIFIER_LIST:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTNAME: anElement [
	^subTreeVisitor visitECSTNameChildren: anElement.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTOPERATOR:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTPACKAGE_DECL: anElement [
	| package names |
	names := self visitECSTNAME: (finder find: 'NAME' in: anElement).
	self ensurePackages: names flattened 
]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTPARAMETER_DECL:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTSEPARATOR:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTSTEP:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTTYPE:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTToken:anElement [
	| selector |
	(self isUniversalNode: anElement) ifTrue: [selector := 'visitECST' , (anElement attributeAt: 'text'), ':'. self perform: selector asSymbol with: anElement ]

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTVALUE:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #'as yet unclassified' }
ECSTGlobalVisitor >> visitECSTVAR_DECL:anElement [
	self flag: 'Should Implement !!!'.

]

{ #category : #accessing }
ECSTGlobalVisitor >> visitElement: aNode [
	aNode isElement ifFalse:[ ^self].		
	( aNode name = 'token') ifTrue: [self visitECSTToken: aNode]. 
	( aNode name = 'childElement') ifTrue: [self visitECSTChildElement: aNode]
]
