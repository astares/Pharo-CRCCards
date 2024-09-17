Class {
	#name : 'CRCCardAddCardCommmand',
	#superclass : 'CRCCardCommmand',
	#category : 'CRCCards-UI-Spec-Commands',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Commands'
}

{ #category : 'executing' }
CRCCardAddCardCommmand >> execute [
	self context halt
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
