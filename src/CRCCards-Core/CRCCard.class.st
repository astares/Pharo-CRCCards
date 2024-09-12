"
A Class Responsibility Collaborator (CRC) card
"
Class {
	#name : 'CRCCard',
	#superclass : 'Model',
	#instVars : [
		'name',
		'responsibilities',
		'collaborators'
	],
	#category : 'CRCCards-Core-Base',
	#package : 'CRCCards-Core',
	#tag : 'Base'
}

{ #category : 'instan' }
CRCCard class >> named: aString [

	^ (self new)
			name: aString;
			yourself
]

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

	name := anObject.
	self valueChanged
]

{ #category : 'accessing' }
CRCCard >> responsibilities [

	^ responsibilities ifNil: [ responsibilities := OrderedCollection new ]
]

{ #category : 'accessing' }
CRCCard >> responsibilities: anObject [

	responsibilities := anObject
]
