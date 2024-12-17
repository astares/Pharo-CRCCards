Class {
	#name : 'CRCCardAddCardCommmand',
	#superclass : 'CRCCardCommmand',
	#category : 'CRCCards-UI-Spec-Commands',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Commands'
}

{ #category : 'executing' }
CRCCardAddCardCommmand >> execute [
	| name |
	name := UIManager default request: 'Name'.
	name ifNil: [ ^ self ].
	name ifEmpty: [ ^ self ].
	self context addCard: (CRCCard named: name)
]

{ #category : 'accessing' }
CRCCardAddCardCommmand >> iconName [  

	^ #add
]

{ #category : 'initialization' }
CRCCardAddCardCommmand >> initialize [

	super initialize.
	self
		name: 'Add Card';
		description: 'Add a new CRC card'
]
