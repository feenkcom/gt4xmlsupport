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
XMLNodeWithElements >> spotterForAllElementsFor: aStep [
	<spotterOrder: 40>
	aStep listProcessor
		title: 'All elements';
		allCandidates: [self allElements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithElements >> spotterForDirectElementsFor: aStep [
	<spotterOrder: 40>
	aStep listProcessor
		title: 'Direct elements';
		allCandidates: [self elements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithElements >> supportsTreeView [
	^ self hasChildren
		and: [self nodes anySatisfy: [:each | each isStringNode not]]
]
