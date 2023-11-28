Extension { #name : #XMLParserException }

{ #category : #'*GToolkit4XMLSupport' }
XMLParserException >> gtContextWithFileReference [
	^ self signalerContext stack
		detect: [ :aContext | 
			(aContext receiver isKindOf: AbstractFileReference)
				or: [ aContext receiver isKindOf: GtResourceReference ] ]
		ifNone: [ nil ]
]

{ #category : #'*GToolkit4XMLSupport' }
XMLParserException >> gtFileReferenceContentsFor: aView [
	<gtView>
	<gtExceptionDebuggingView>
	self gtHasStack ifFalse: [ ^ aView empty ].
	self gtContextWithFileReference ifNil: [ ^ aView empty ].

	^ aView forward
		title: 'File contents';
		priority: 31;
		object: [ self gtContextWithFileReference receiver ];
		view: #gtContentsFor:
]

{ #category : #'*GToolkit4XMLSupport' }
XMLParserException >> gtFileReferencePathFor: aView [
	<gtView>
	<gtExceptionDebuggingView>
	self gtHasStack ifFalse: [ ^ aView empty ].
	self gtContextWithFileReference ifNil: [ ^ aView empty ].

	^ aView forward
		title: 'File path';
		priority: 30;
		object: [ self gtContextWithFileReference receiver ];
		view: #gtPathFor:
]
