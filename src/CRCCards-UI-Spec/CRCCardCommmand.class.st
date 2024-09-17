Class {
	#name : 'CRCCardCommmand',
	#superclass : 'CmCommand',
	#category : 'CRCCards-UI-Spec-Commands',
	#package : 'CRCCards-UI-Spec',
	#tag : 'Commands'
}

{ #category : 'testing' }
CRCCardCommmand class >> isAbstract [

	^ self == CRCCardCommmand
]

{ #category : 'converting' }
CRCCardCommmand >> asSpecCommand [

	^ super asSpecCommand
		  iconName: self iconName;
		  yourself
]

{ #category : 'accessing' }
CRCCardCommmand >> iconName [

	^ self subclassResponsibility
]
