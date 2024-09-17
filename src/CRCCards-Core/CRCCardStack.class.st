"
A stack of CRC cards
"
Class {
	#name : 'CRCCardStack',
	#superclass : 'Model',
	#instVars : [
		'cards'
	],
	#category : 'CRCCards-Core-Base',
	#package : 'CRCCards-Core',
	#tag : 'Base'
}

{ #category : 'accessing' }
CRCCardStack >> cards [

	^ cards
]

{ #category : 'accessing' }
CRCCardStack >> cards: anObject [

	cards := anObject
]

{ #category : 'initialization' }
CRCCardStack >> initialize [

	super initialize.
	cards := SortedCollection sortBlock: [:e1 :e2 | e1 name < e2 name ]
]
