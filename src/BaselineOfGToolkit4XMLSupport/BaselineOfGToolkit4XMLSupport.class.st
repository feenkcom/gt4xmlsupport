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
					spec repository: 'github://feenkcom/XPath/src' ];
				baseline: 'XMLWriter' with: [
					spec repository: 'github://feenkcom/XMLWriter/src' ];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XPath XMLWriter) ]]
]
