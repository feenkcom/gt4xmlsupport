Extension { #name : #XMLNode }

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtTreeIn: aView [
	<gtView>
	self supportsTreeView ifFalse: [ ^ aView empty ].
	^ aView tree
			title: 'Tree';
			items: [ {self} ];
			children: [:each | each treeViewChildren]";
			itemFormat: [:each | each treeViewLabelText]"
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtXPathFor: aView [
	<gtView>
	self supportsXPathEvaluator ifFalse: [^ aView empty].
	^ aView textEditor
		title: 'XPath';
		text: ['self::node()'];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton | 
			| xpath |
			xpath := aButton phlow textViewContent asString.
			aButton phlow spawnObject: (self xpath: xpath) ]
]
