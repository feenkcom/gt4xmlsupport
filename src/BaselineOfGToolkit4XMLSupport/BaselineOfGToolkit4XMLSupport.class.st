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
				baseline: 'XPath' with: [
					spec repository: 'github://feenkcom/XPath:v0.6.1/src' ];
				baseline: 'XMLWriter' with: [
					spec repository: 'github://feenkcom/XMLWriter:v0.6.0/src' ];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XPath XMLWriter) ]]
]
