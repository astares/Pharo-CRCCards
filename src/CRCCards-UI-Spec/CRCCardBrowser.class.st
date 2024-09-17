"
A presenter for a CRC card
"
Class {
	#name : 'CRCCardBrowser',
	#superclass : 'SpPresenter',
	#instVars : [
		'cardList'
	],
	#category : 'CRCCards-UI-Spec-Presenters',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Presenters'
}

{ #category : 'commands' }
CRCCardBrowser class >> buildCommandsGroupWith: presenterIntance forRoot: rootCommandGroup [

	rootCommandGroup register:
		((CmCommandGroup named: 'card commands') asSpecGroup 
			register: (CRCCardAddCardCommmand forSpecContext: presenterIntance)).
	 
]

{ #category : 'instance creation' }
CRCCardBrowser class >> open [
	<script>
	
	| instance |
	instance := self new.	 
	instance open
]

{ #category : 'layout' }
CRCCardBrowser >> defaultLayout [ 

	^ SpBoxLayout newTopToBottom
		add: #cardList; 
		yourself
]

{ #category : 'initialization' }
CRCCardBrowser >> initializePresenters [

	cardList := self newList.
	cardList headerTitle: 'Name'.
	cardList	
		contextMenu: [ (self rootCommandsGroup / 'card commands') beRoot asMenuPresenter	].
]

{ #category : 'initialization' }
CRCCardBrowser >> initializeWindow: aWindowPresenter [

	
	aWindowPresenter
		title: 'All Cards'
]
