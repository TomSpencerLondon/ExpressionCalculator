Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EExpression >> negated [
	^ ENegation new expression: self
]
