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
					spec repository: 'github://pharo-contributions/XML-XPath:2.2.x/src' ];
				baseline: 'XMLWriter' with: [
					spec repository: 'github://pharo-contributions/XML-XMLWriter:2.9.x/src' ];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XPath) ]]
]
