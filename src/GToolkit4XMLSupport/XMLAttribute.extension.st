Extension { #name : #XMLAttribute }

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLAttribute >> removeFromParent [
	self parent removeAttributeNode: self
]

{ #category : #'*GToolkit4XMLSupport-Highlighting' }
XMLAttribute >> supportsSourceEditing [
	^ false
]
