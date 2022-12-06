Extension { #name : #XMLNodeWithElements }

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithElements >> addTreeViewChildrenTo: anOrderedCollection [
	self nodesDo: [:each |
		(each isStringNode
			and: [each isEmpty
				or: [each isWhitespace]])
			ifFalse: [anOrderedCollection addLast: each]]
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithElements class >> gtExampleXmlNode [
	<gtExample>
	^ XMLDocument gtExampleXmlNode nodes
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithElements >> supportsTreeView [
	^ self hasChildren
		and: [self nodes anySatisfy: [:each | each isStringNode not]]
]
