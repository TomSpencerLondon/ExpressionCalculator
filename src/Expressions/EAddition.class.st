Class {
	#name : 'EAddition',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EAddition class >> left: anInteger right: anInteger2 [
	^ self new left: anInteger ; right: anInteger2 
]

{ #category : 'accessing' }
EAddition >> evaluateWith: aDictionary [

	^ (left evaluateWith: aDictionary)
	  + (right evaluateWith: aDictionary)
]

{ #category : 'accessing' }
EAddition >> expression: anEAddition [ 
	self shouldBeImplemented.
]

{ #category : 'accessing' }
EAddition >> negated [
	^ ENegation new expression: self
]

{ #category : 'as yet unclassified' }
EAddition >> operatorString [

	^ ' + '
]
