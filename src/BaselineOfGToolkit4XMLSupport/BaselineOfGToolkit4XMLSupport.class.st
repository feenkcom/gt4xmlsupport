Class {
	#name : #BaselineOfGToolkit4XMLSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4XMLSupport
}

{ #category : #baseline }
BaselineOfGToolkit4XMLSupport >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'XPathForGlamorousToolkit' with: [
				spec repository: 'github://feenkcom/XML-XPath:v0.6.0/src' ].
		spec
			baseline: 'XMLWriterForGlamorousToolkit' with: [
				spec repository: 'github://feenkcom/XML-XMLWriter:v0.6.0/src' ].

		spec package: 'GToolkit4XMLSupport' with: [
			spec requires: #('XPathForGlamorousToolkit' 'XMLWriterForGlamorousToolkit') ].
	]
]
