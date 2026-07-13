Class {
	#name : 'EVariable',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EVariable >> evaluateWith: aBindingDictionary [
	^ aBindingDictionary at: id
]

{ #category : 'accessing' }
EVariable >> id: aSymbol [
	id := aSymbol 
]
