Extension { #name : 'XMLNodeWithChildren' }

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithChildren >> addTreeViewChildrenTo: anOrderedCollection [
	self nodesDo: [:each |
		anOrderedCollection addLast: each]
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithChildren >> supportsTreeView [
	^ self hasChildren
]

{ #category : '*GToolkit4XMLSupport-Highlighting' }
XMLNodeWithChildren >> treeViewChildren [
	self supportsTreeView
		ifTrue: [| treeViewChildren |
			treeViewChildren := OrderedCollection new: self nodes size.
			self addTreeViewChildrenTo: treeViewChildren.
			^ treeViewChildren]
		ifFalse: [^ #()]
]
