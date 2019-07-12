Extension { #name : #XMLNodeWithElements }

{ #category : #'*GToolkit4XMLSupport' }
XMLNodeWithElements >> gtSpotterForAllElementsFor: aStep [
	<gtSearch>
	aStep listProcessor
		priority: 40;
		title: 'All elements';
		allCandidates: [ self allElements ];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true
]

{ #category : #'*GToolkit4XMLSupport' }
XMLNodeWithElements >> gtSpotterForDirectElementsFor: aStep [
	<gtSearch>
	aStep listProcessor
		priority: 40;
		title: 'Direct elements';
		allCandidates: [ self elements ];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true
]
