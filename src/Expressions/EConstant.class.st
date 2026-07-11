Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EConstant >> evaluate [
	^ value
]

{ #category : 'accessing' }
EConstant >> negated [
	^ ENegation new expression: self
]

{ #category : 'accessing' }
EConstant >> value: anInteger [

	value := anInteger
]
