Class {
	#name : 'EAddition',
	#superclass : 'Object',
	#instVars : [
		'right',
		'left'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'accessing' }
EAddition >> expression: anEAddition [ 
	self shouldBeImplemented.
]

{ #category : 'accessing' }
EAddition >> left: anEConstant [ 
	left := anEConstant
]

{ #category : 'accessing' }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : 'accessing' }
EAddition >> right: anEConstant [ 
	right := anEConstant
]
