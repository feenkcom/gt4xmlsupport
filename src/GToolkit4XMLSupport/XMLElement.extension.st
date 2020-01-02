Extension { #name : #XMLElement }

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> formForImageEntity: imageEntity [
  | imageType parserClassName parserClass parser |
  imageType := imageEntity contentType sub.
  parserClassName := imageType asUppercase, #ReadWriter.
  parserClass := Smalltalk globals at: parserClassName asSymbol.
  parser := parserClass on: imageEntity readStream.
    ^ parser nextImage
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement class >> gtExampleXmlNode [
	<gtExample>
	^ XMLDocument gtExampleXmlNode firstElement
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> gtInspectorAttributesIn: aComposite inContext: aGTInspector [
	<gtInspectorPresentationOrder: 3>
	
	aComposite table
		when: [ self hasAttributes ];
		title: 'Attributes';
		display: [ self attributeNodes ];
		column: 'Name' evaluated: #name;
		column: 'Value' evaluated: #value
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> gtInspectorImageIn: composite inContext: aGTInspector [
	<gtInspectorPresentationOrder: 40>
	| client url |
	aGTInspector panes size > 1
		ifFalse: [ ^ self ].
	client := (aGTInspector panes reversed collect: [ :each | (each port: #entity) value ])
		detect: [ :each | (each isKindOf: ZnClient) and: [ each request notNil ] ]
		ifNone: [ ^ self ].
	url := client request absoluteUrl.
	^ composite morph
		title: 'Image';
		display:
				[ self
				formForImageEntity:
					(ZnClient new
						beOneShot;
						get: url / (self attributeAt: 'src');
						entity) ];
		when: [ (self isNamed: 'img') and: [ self includesAttribute: 'src' ] ]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> supportsRemoveAction [
	^ self hasParent
		and: [self parent isDocument not]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> supportsSourceEditing [
	^ self hasParent
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement >> writeTreeViewLabelXMLOn: aWriter [
	self supportsTreeView
		ifTrue: [
			"write just an unclosed start tag if the element can be expanded
			to display tree view children"
			aWriter startTag
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes]
		ifFalse: [| tagWriter |
			(tagWriter := aWriter tag)
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes.
			"a non-expandable element can still have chilren (string nodes) that
			need to be written"
			self hasChildren
				ifTrue: [
					tagWriter with: [
						self writeInnerXMLOn: aWriter]]]
]
