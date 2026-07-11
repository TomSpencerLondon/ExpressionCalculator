Class {
	#name : 'EMultiplication',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EMultiplication >> evaluate [
	^ left evaluate * right evaluate
]

{ #category : 'accessing' }
EMultiplication >> left: anEConstant [ 
	left := anEConstant
]

{ #category : 'accessing' }
EMultiplication >> negated [
	^ ENegation new expression: self
]

{ #category : 'accessing' }
EMultiplication >> right: anEConstant [ 
	right := anEConstant
]
