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
				spec repository: 'github://feenkcom/XML-XPath:gt/src' ];
			baseline: 'XMLWriterForGlamorousToolkit' with: [
				spec repository: 'github://feenkcom/XML-XMLWriter:gt/src' ].
		
		spec package: 'GToolkit4XMLSupport' with: [
				spec requires: #('XPathForGlamorousToolkit' 'XMLWriterForGlamorousToolkit' ). ]. ].
]
