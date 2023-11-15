Extension { #name : #XMLOrderedList }

{ #category : #'*GToolkit4XMLSupport' }
XMLOrderedList >> asBrItemsProvider [

	^ BrSequenceableCollectionItemsProvider forCollection: self
]

{ #category : #'*GToolkit4XMLSupport' }
XMLOrderedList >> gtAttributeValuesFor: aView [
	<gtView>
	(self anySatisfy: [ :each | each isAttribute not ]) ifTrue: [ ^ aView empty ].

	^ aView columnedList
		title: 'Attribute values';
		priority: 45;
		items: [ (self groupedBy: #value) associations sorted: [ :a :b | a < b ] ];
		column: 'Value' text: #key;
		column: 'Attributes' text: #value;
		send: [ :anAssoc | 
			anAssoc value size = 1
				ifTrue: [ anAssoc value anyOne ]
				ifFalse: [ anAssoc value ] ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLOrderedList >> gtTreeFor: aView [
	<gtView>
	^ aView tree
		title: 'Tree';
		priority: 50;
		items: [ self ];
		children: [ :each | each treeViewChildren ];
		itemText: [ :each | each gtDisplayText ]
]
