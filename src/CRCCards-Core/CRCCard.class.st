"
A Class Responsibility Collaborator (CRC) card
"
Class {
	#name : 'CRCCard',
	#superclass : 'Object',
	#instVars : [
		'name',
		'responsibilities',
		'collaborators'
	],
	#category : 'CRCCards-Core-Base',
	#package : 'CRCCards-Core',
	#tag : 'Base'
}

{ #category : 'operating' }
CRCCard >> addCollaborator: aString [
    collaborators add: aString
]

{ #category : 'operating' }
CRCCard >> addResponsibility: aString [
    responsibilities add: aString
]

{ #category : 'accessing' }
CRCCard >> collaborators [

	^ collaborators ifNil: [ collaborators := OrderedCollection new ]
]

{ #category : 'accessing' }
CRCCard >> collaborators: anObject [

	collaborators := anObject
]

{ #category : 'initialization' }
CRCCard >> initialize [

	super initialize.
	name := 'Unnamed Card'.
	responsibilities := OrderedCollection new.
	collaborators := OrderedCollection new
]

{ #category : 'accessing' }
CRCCard >> name [

	^ name
]

{ #category : 'accessing' }
CRCCard >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
CRCCard >> responsibilities [

	^ responsibilities ifNil: [ responsibilities := OrderedCollection new ]
]

{ #category : 'accessing' }
CRCCard >> responsibilities: anObject [

	responsibilities := anObject
]