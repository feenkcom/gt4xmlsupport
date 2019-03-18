Extension { #name : #XMLNode }

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtSourceIn: aView [
	<gtView>
	^ aView textEditor
		title: 'Source';
		styler: Gt4XMLStyler new;
		look: BrGlamorousCodeEditorLook new;
		priority: 20;
		text: [
			String new: 10000 streamContents: [:stream |
				self
					printOn: stream
					beforeWritingDo: [:writer |
						writer enablePrologPrettyPrinting]]]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtTreeIn: aView [
	<gtView>
	self supportsTreeView ifFalse: [ ^ aView empty ].
	^ aView tree
			title: 'Tree';
			priority: 10;
			items: [ {self} ];
			children: [:each | each treeViewChildren];
			itemFormat: [:each | each gtDisplayString]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNode >> gtXPathFor: aView [
	<gtView>
	self supportsXPathEvaluator ifFalse: [^ aView empty].
	^ aView textEditor
		title: 'XPath';
		look: BrGlamorousEditorLook new;
		text: ['self::node()'];
		actionButtonIcon: BrGlamorousIcons playinspect  
			action: [ :aButton | 
			| xpath |
			xpath := aButton phlow textViewContent asString.
			aButton phlow spawnObject: (self xpath: xpath) ]
]
