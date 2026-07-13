Class {
	#name : 'EBinaryExpression',
	#superclass : 'Object',
	#instVars : [
		'right',
		'left'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EBinaryExpression >> left: anEConstant [ 
	left := anEConstant
]

{ #category : 'as yet unclassified' }
EBinaryExpression >> operatorString [

	self subclassResponsibility
]

{ #category : 'printing' }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : 'accessing' }
EBinaryExpression >> right: anEConstant [ 
	right := anEConstant
]
