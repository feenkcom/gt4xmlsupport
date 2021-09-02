Extension { #name : 'XMLDocument' }

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument >> addTreeViewChildrenTo: anOrderedCollection [
	self hasDoctypeDeclaration
		ifTrue: [anOrderedCollection addLast: self doctypeDeclaration].
	super addTreeViewChildrenTo: anOrderedCollection.
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument class >> gtExampleXmlNode [
	<gtExample>
	^ XMLDOMParser parse: '<document><a></a><b></b></document>'
]

{ #category : '*GToolkit4XMLSupport' }
XMLDocument >> namespaceNodes [
	^ self firstElement
		ifNotNil: #namespaceNodes
		ifNil: [ #() ]
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument >> setOuterXMLFromEditedSource: aString [
	| newDocument |

	[newDocument :=
		(self parserHandlerClass on: aString)
			configuration: self configuration;
			parseDocument]
		on: Error
		do: [:error |
			newDocument := nil.
			error pass].
	newDocument
		ifNotNil: [
			self
				removeNodes;
				configuration: newDocument configuration;
				version: newDocument version;
				encoding: newDocument encoding;
				isStandalone: newDocument isStandalone;
				doctypeDeclaration: newDocument doctypeDeclaration;
				doctypeDefinition: newDocument doctypeDefinition;
				addNodes: newDocument nodes copy].
	^ self.
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument >> supportsSourceEditing [
	^ true
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument >> supportsTreeView [
	^ self hasDoctypeDeclaration
		or: [super supportsTreeView]
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLDocument >> writeTreeViewLabelXMLOn: aWriter [
	self writeXMLDeclarationOn: aWriter
]
