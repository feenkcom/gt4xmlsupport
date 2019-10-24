Class {
	#name : #BaselineOfGToolkit4XMLSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4XMLSupport
}

{ #category : #baseline }
BaselineOfGToolkit4XMLSupport >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec 
				project: 'XMLParser' with: [ 
				spec
					baseline: 'XMLParser' with: [
				spec repository: 'github://feenkcom/XMLParser/src' ].
				spec
					baseline: 'XPath' with: [
				spec repository: 'github://feenkcom/XPath/src' ]];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XMLParser) ] ]
]
