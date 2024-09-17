Class {
	#name : 'CRCCardAddResponsibilityCommmand',
	#superclass : 'CRCCardCommmand',
	#category : 'CRCCards-UI-Spec-Commands',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Commands'
}

{ #category : 'initialization' }
CRCCardAddResponsibilityCommmand >> execute [
	self context halt
]

{ #category : 'initialization' }
CRCCardAddResponsibilityCommmand >> iconName [  

	^ #add
]

{ #category : 'initialization' }
CRCCardAddResponsibilityCommmand >> initialize [

	super initialize.
	self
		name: 'Add Responsibility';
		description: 'Add a new responsibility'
]
