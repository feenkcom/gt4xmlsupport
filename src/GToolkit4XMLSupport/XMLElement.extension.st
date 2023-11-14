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

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtAttributesFor: aView [
	<gtView>
	self hasAttributes
		ifFalse: [ ^ aView empty ].
	^ aView columnedList
		title: 'Attributes';
		priority: 23;
		items: [ self attributeNodes ];
		column: 'Name' text: #name;
		column: 'Value' text: #value weight: 2
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLElement class >> gtExampleXmlNode [
	<gtExample>
	^ XMLDocument gtExampleXmlNode firstElement
]

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtGroupedAllSuccessorsAttributeNamessFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Successors attributes';
		tooltip: 'All element-children attributes grouped by name';
		priority: 63;
		items: [ ((self // '*') @ '*' groupedBy: #name) associations sorted: [ :a :b | a < b ] ];
		column: 'Child name' text: #key;
		column: 'List'
			text: #value
			weight: 3;
		send: [ :anAssoc | 
			anAssoc value size = 1
				ifTrue: [ anAssoc value anyOne ]
				ifFalse: [ anAssoc value ] ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtGroupedAllSuccessorsElementsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Successor names';
		tooltip: 'All element-children grouped by name';
		priority: 61;
		items: [ ((self // '*') groupedBy: #name) associations ];
		column: 'Child name' text: #key;
		column: 'List'
			text: #value
			weight: 3;
		send: [ :anAssoc | 
			anAssoc value size = 1
				ifTrue: [ anAssoc value anyOne ]
				ifFalse: [ anAssoc value ] ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtGroupedChildrenAttributeNamessFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Children attributes';
		tooltip: 'Direct element-children attributes grouped by name';
		priority: 62;
		items: [ ((self / '*') @ '*' groupedBy: #name) associations sorted: [ :a :b | a < b ] ];
		column: 'Child name' text: #key;
		column: 'List'
			text: #value
			weight: 3;
		send: [ :anAssoc | 
			anAssoc value size = 1
				ifTrue: [ anAssoc value anyOne ]
				ifFalse: [ anAssoc value ] ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtGroupedChildrenElementsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Children names';
		tooltip: 'Direct child-elements grouped by name';
		priority: 60;
		items: [ (self elements groupedBy: #name) associations ];
		column: 'Child name' text: #key;
		column: 'List'
			text: #value
			weight: 3;
		send: [ :anAssoc | 
			anAssoc value size = 1
				ifTrue: [ anAssoc value anyOne ]
				ifFalse: [ anAssoc value ] ]
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

{ #category : #'*GToolkit4XMLSupport' }
XMLElement >> gtNamespaceNodesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Namespaces';
		priority: 30;
		items: [ self namespaceNodes sort: [ :a :b |
			a name < b name ] ];
		column: 'Name' text: #name;
		column: 'URI' text: #uri weight: 2
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
