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
					className: 'ConfigurationOfXMLParser';	
					versionString: #'development';
					repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'];
			project: 'XPath' with: [
				spec
					className: #ConfigurationOfXPath;
					versionString: #development;
					repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main' ];
				package: 'GToolkit4XMLSupport' with: [ spec requires: #(XMLParser) ] ]
]
