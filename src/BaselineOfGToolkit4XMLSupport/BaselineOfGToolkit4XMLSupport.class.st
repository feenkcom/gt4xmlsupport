Class {
	#name : #BaselineOfGToolkit4XMLSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4XMLSupport
}

{ #category : #baseline }
BaselineOfGToolkit4XMLSupport >> baseline: spec [
	<baseline>
	spec
		for: #common do: [
			spec
				baseline: 'XMLParser' with: [
					spec repository: 'github://feenkcom/XMLParser:v0.6.1/src' ];
				baseline: 'XPath' with: [
					spec repository: 'github://feenkcom/XPath:v0.6.1/src' ]]
]
