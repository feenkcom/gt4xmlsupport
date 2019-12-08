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
					spec repository: 'github://pharo-contributions/XML-XPath/src' ];
				baseline: 'XMLWriter' with: [
					spec repository: 'github://pharo-contributions/XML-XMLWriter/src' ];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XPath) ]]
]
