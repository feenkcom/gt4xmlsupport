Extension { #name : 'XMLOrderedList' }

{ #category : '*GToolkit4XMLSupport' }
XMLOrderedList >> gtTreeFor: aView [
	<gtView>
	^ aView tree
		title: 'Tree';
		priority: 50;
		items: [ self ];
		children: [ :each | each treeViewChildren ];
		itemText: [ :each | each gtDisplayText ]
]
