Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EConstant class >> constant3 [
	<sampleInstance>
	^ self new value: 3
]

{ #category : 'as yet unclassified' }
EConstant class >> constant5 [
	^ self new value: 5
]

{ #category : 'as yet unclassified' }
EConstant class >> fivePlusThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	^ self new left: ep1 ; right: ep2
]

{ #category : 'accessing' }
EConstant class >> value: anInteger [
	^ self new value: anInteger 
]

{ #category : 'accessing' }
EConstant >> evaluateWith: aDictionary [
	^ value
]

{ #category : 'printing' }
EConstant >> printOn: aStream [
	aStream nextPutAll: value printString
]

{ #category : 'accessing' }
EConstant >> value: anInteger [

	value := anInteger
]
