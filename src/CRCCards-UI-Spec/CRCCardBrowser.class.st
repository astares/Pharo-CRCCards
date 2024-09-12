"
A presenter for a CRC card
"
Class {
	#name : 'CRCCardBrowser',
	#superclass : 'SpPresenter',
	#instVars : [
		'cardList'
	],
	#category : 'CRCCards-UI-Spec-Base',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Base'
}

{ #category : 'initialization' }
CRCCardBrowser >> initializePresenters [

	cardList := self newList.
]
