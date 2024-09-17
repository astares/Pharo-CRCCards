"
A presenter for a single CRC card
"
Class {
	#name : 'CRCCardPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'responsibilitiesList',
		'collaboratersList',
		'nameInput'
	],
	#category : 'CRCCards-UI-Spec-Presenters',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Presenters'
}

{ #category : 'commands' }
CRCCardPresenter class >> buildCommandsGroupWith: presenterIntance forRoot: rootCommandGroup [

	rootCommandGroup register:
		((CmCommandGroup named: 'collaborator commands') asSpecGroup 
			register: (CRCCardAddCollaboratorCommmand forSpecContext: presenterIntance)).
			
		
	rootCommandGroup register:
		((CmCommandGroup named: 'responsibility commands') asSpecGroup 
			register: (CRCCardAddResponsibilityCommmand forSpecContext: presenterIntance))	
]

{ #category : 'commands' }
CRCCardPresenter class >> open [
	<script>
	
	| instance |
	instance := self new.
	instance model: CRCCard new.
	instance model inspect.
	instance open
]

{ #category : 'layout' }
CRCCardPresenter >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom
		add: #nameInput; 
		add: (SpPanedLayout newLeftToRight				   
						    add: #responsibilitiesList;
						    add: #collaboratersList;
						    yourself);
		yourself
]

{ #category : 'initialization' }
CRCCardPresenter >> initializePresenters [
	nameInput := self newTextInput placeholder: 'Card name'.

	responsibilitiesList := self newList.
	responsibilitiesList headerTitle: 'Responsibilities'.
	responsibilitiesList	
		contextMenu: [ (self rootCommandsGroup / 'responsibility commands') beRoot asMenuPresenter ].

	collaboratersList := self newList.
	collaboratersList headerTitle: 'Collaborators'.
	collaboratersList	
		contextMenu: [ (self rootCommandsGroup / 'collaborator commands') beRoot asMenuPresenter	]
]

{ #category : 'initialization' }
CRCCardPresenter >> initializeWindow: aWindowPresenter [

	
	aWindowPresenter
		title: (self model ifNil: [ 'Unnamed Card' ] ifNotNil: [:model | model name ])
]

{ #category : 'initialization' }
CRCCardPresenter >> modelChanged [ 
	self model ifNil: [ ^self ].
	nameInput text: self model name.

]
