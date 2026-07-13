Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
ENegation class >> expression: anExpression [
	^ ENegation new expression: anExpression 
]

{ #category : 'instance creation' }
ENegation >> evaluateWith: aDictionary [

	^ (expression evaluateWith: Dictionary new) negated
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [ 
	expression := anExpression
]

{ #category : 'instance creation' }
ENegation >> negated [
	^ expression
]

{ #category : 'printing' }
ENegation >> printOn: aStream [
	aStream 
		nextPutAll: '- '.
		expression printOn: aStream
]
