"
Baseline for CRC Cards project [https://github.com/astares/Pharo-CRCCards](https://github.com/astares/Pharo-CRCCards)
"
Class {
	#name : 'BaselineOfCRCCards',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfCRCCards-Base',
	#package : 'BaselineOfCRCCards',
	#tag : 'Base'
}

{ #category : 'baselines' }
BaselineOfCRCCards >> baseline: spec [

	<baseline>
	spec for: #common do: [	 
		"Packages"
		spec 
			package: 'CRCCards-Core';
			package: 'CRCCards-Core-Tests' with: [ spec requires: #( 'CRCCards-Core' ) ];
			package: 'CRCCards-UI-Spec' with: [ spec requires: #( 'CRCCards-Core' ) ].
		
		"Custom Groups"	
		spec
			group: 'Core' with: #( 'CRCCards-Core' );
			group: 'Tests' with: #( 'CRCCards-Core-Tests' );
			group: 'UI' with: #('CRCCards-UI-Spec').						

		"Standard Groups"	
		spec group: 'default' with: #( 'Core' 'Tests' 'UI').	
		spec group: 'all' with: #( 'default').
	]
]
