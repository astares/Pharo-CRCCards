Class {
	#name : 'CRCCardAddCollaboratorCommmand',
	#superclass : 'CRCCardCommmand',
	#category : 'CRCCards-UI-Spec-Commands',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Commands'
}

{ #category : 'initialization' }
CRCCardAddCollaboratorCommmand >> execute [
	self context halt
]

{ #category : 'initialization' }
CRCCardAddCollaboratorCommmand >> iconName [  

	^ #add
]

{ #category : 'initialization' }
CRCCardAddCollaboratorCommmand >> initialize [

	super initialize.
	self
		name: 'Add Collaborator';
		description: 'Add a new collaborator'
]
