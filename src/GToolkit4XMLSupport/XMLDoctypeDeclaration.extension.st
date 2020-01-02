Extension { #name : #XMLDoctypeDeclaration }

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLDoctypeDeclaration >> removeFromParent [
	self parent doctypeDeclaration: nil
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLDoctypeDeclaration >> supportsSourceEditing [
	^ false
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLDoctypeDeclaration >> writeTreeViewLabelXMLOn: aWriter [
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID;
		write
]
