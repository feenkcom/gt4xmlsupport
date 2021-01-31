Extension { #name : #XMLNode }

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> acceptEditedSource: aSourceTextOrString inContext: aGTInspector [
	| newOuterXMLNode |

	newOuterXMLNode :=
		self setOuterXMLFromEditedSource: aSourceTextOrString asString.

	"find the previous panes of the first pane inspecting
	the receiver (not necessarily the current pane)"
	(aGTInspector panes
		copyFrom: 1
		to:
			(aGTInspector panes findFirst: [:each |
				(each port: #entity) value = self]) - 1)
		ifEmpty: [
			"no previous panes; delete any panes after the
			current and make its selection the new outer XML
			node (closing and reopening is a hack to do this,
			but it works for now)"
			aGTInspector browser close.
			aGTInspector openOn: newOuterXMLNode]
		ifNotEmpty: [:previousPanes |
			"update all previous panes and replace the first
			pane inspecting the receiver with one inspecting
			the new outer XML node"
			previousPanes do: [:each | each update].
			previousPanes last presentations first
				selection: newOuterXMLNode].
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> addRemoveActionTo: aPresentation in: aComposite inContext: aGTInspector [
	(self supportsRemoveAction not
		or: [aGTInspector panes size <= 1
			or: [(aGTInspector panes first port: #entity) value = self]])
		ifTrue: [^ self].

	aPresentation
		act: [| removeStartIndex |
			(UIManager default confirm: 'Remove node from DOM tree?')
				ifTrue: [
					self removeFromParent.

					"remove all panes starting with the first pane inspecting
					the receiver (not necessarily the current pane)"
					removeStartIndex :=
						aGTInspector panes findFirst: [:each |
							(each port: #entity) value = self].
					removeStartIndex
						to: aGTInspector panes size
						do: [:i |
							aGTInspector removeLastPane].

					"update the remaining panes"
					aGTInspector panes do: [:each |
						each update]]]
		icon: GLMUIThemeExtraIcons glamorousRemove
		on: $X
		entitled: 'Remove'.
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtDisplayText [
	| aText |
	aText := super gtDisplayText.
	^ Gt4XMLStyler new style: aText.
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode class >> gtExampleNodeWithParent [
	<gtExample>
	^ self new parent: self new
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtItemsFor: aView [
	<gtView>
	self supportsTreeView
		ifFalse: [ ^ aView empty ].
	^ aView tree
		title: 'Tree';
		priority: 10;
		items: [ {self} ];
		children: [ :each | each treeViewChildren ];
		itemText: [ :each | each gtDisplayText ];
		expandUpTo: 2
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtParentsFor: aView [
	<gtView>
	^ aView list
		title: 'Parents';
		priority: 25;
		items: [ self %% '*' ];
		itemText: [ :each | each gtDisplayText ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtSourceIn: aView [
	<gtView>
	^ aView textEditor
		title: 'Source';
		styler: Gt4XMLStyler new;
		look: BrGlamorousCodeEditorLook;
		priority: 20;
		text: [
			String new: 10000 streamContents: [:stream |
				self
					printOn: stream
					beforeWritingDo: [:writer |
						writer enablePrologPrettyPrinting]]]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtSupportsXPathEvaluator [
	^ true
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtTreeIn: aView [
	self deprecated: 'please use gtItemsFor: instead'.
	^ self gtItemsFor: aView
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtXPathFor: aView [
	<gtView>
	self gtSupportsXPathEvaluator ifFalse: [^ aView empty].
	^ aView textEditor
		title: 'XPath';
		look: BrGlamorousEditorLook;
		text: ['self::node()'];
		actionButtonIcon: BrGlamorousVectorIcons playinspect  
			action: [ :aButton | 
			| xpath |
			xpath := aButton phlow textViewContent asString.
			aButton phlow spawnObject: (self xpath: xpath) ]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> promptForSourceSaveFileName [
	^ (UITheme builder
		fileSave: 'Save XML source to file'
		extensions:
			"'xml' must come first so it's the default extension"
			(XMLFileHandle xmlDocumentFileExtensions sorted: [:a :b |
				a = 'xml'
					or: [b ~= 'xml'
						and: [a <= b]]]))
			ifNil: ['']
			ifNotNil: [:reference | reference fullName]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> removeFromParent [
	self parent removeNode: self
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> setOuterXMLFromEditedSource: aString [
	| oldParent oldPosition oldSize |

	oldParent := self parent.
	oldPosition := oldParent nodes indexOf: self.
	oldSize := oldParent nodes size.
	oldParent
		outerXML: aString
		forNode: self.
	^ oldParent nodes size = oldSize
		ifTrue: [oldParent nodes at: oldPosition]
		ifFalse: [oldParent].
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> supportsRemoveAction [
	^ self hasParent
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> supportsSourceEditing [
	^ self hasParent
		and: [self parent isDocument not]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> supportsTreeView [
	"returns true if this node needs a tree view tab when inspected"
	^ false
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> treeViewChildren [
	"returns the subnodes of this node in a tree view"
	^ #()
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNode >> writeTreeViewLabelXMLOn: aWriter [
	self writeXMLOn: aWriter
]
