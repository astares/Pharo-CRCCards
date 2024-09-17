"
The CRC card application
"
Class {
	#name : 'CRCCardApplication',
	#superclass : 'SpApplication',
	#instVars : [
		'cardList'
	],
	#category : 'CRCCards-UI-Spec-Base',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Base'
}

{ #category : 'world menu' }
CRCCardApplication class >> worldMenuOn: aBuilder [
	<worldMenu>
	(aBuilder item: #Astares)
		order: 10.
	
	(aBuilder item: #'CRC Cards')
		"icon: (CRCCIconProvider iconNamed: #docker);"
		parent: #Astares;
		action: [ self new start ].
]

{ #category : 'running' }
CRCCardApplication >> start [ 
	<script: 'self new start'>
	| newPresenter |
	newPresenter := CRCCardBrowser newApplication: self.
	newPresenter open
]
