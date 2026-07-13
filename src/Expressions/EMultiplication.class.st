Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ EMultiplication new left: ep1 ; right: ep2
]

{ #category : 'instance creation' }
EMultiplication class >> left: anExp right: anExp2 [
	^ EMultiplication new left: anExp right: anExp2
]

{ #category : 'accessing' }
EMultiplication >> evaluateWith: aDictionary [

	^ (left evaluateWith: aDictionary)
	  * (right evaluateWith: aDictionary)
]

{ #category : 'accessing' }
EMultiplication >> negated [
	^ ENegation new expression: self
]

{ #category : 'as yet unclassified' }
EMultiplication >> operatorString [

	^ ' * '
]
