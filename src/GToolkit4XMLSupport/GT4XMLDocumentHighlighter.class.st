"
This class is a highlighter to highlight XML document Text objects using XMLHighlights.
"
Class {
	#name : #GT4XMLDocumentHighlighter,
	#superclass : #GT4XMLHighlighter,
	#instVars : [
		'xmlDeclarationColor',
		'doctypeDeclarationColor',
		'declarationColor',
		'piColor',
		'tagColor',
		'nameColor',
		'quotedStringNameColor',
		'quotedStringColor',
		'entityReferenceColor',
		'cdataColor',
		'commentColor',
		'xmlDeclarationHighlight',
		'doctypeDeclarationHighlight',
		'declarationHighlight',
		'piHighlight',
		'tagHighlight',
		'nameHighlight',
		'quotedStringNameHighlight',
		'quotedStringHighlight',
		'entityReferenceHighlight',
		'cdataHighlight',
		'commentHighlight'
	],
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #accessing }
GT4XMLDocumentHighlighter >> cdataColor [
	^ cdataColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> cdataColor: aTextColor [
	cdataColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> commentColor [
	^ commentColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> commentColor: aTextColor [
	commentColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> declarationColor [
	^ declarationColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> declarationColor: aTextColor [
	declarationColor := aTextColor
]

{ #category : #defaults }
GT4XMLDocumentHighlighter >> defaultsClass [
	^ GT4XMLDocumentHighlightDefaults
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> doctypeDeclarationColor [
	^ doctypeDeclarationColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> doctypeDeclarationColor: aTextColor [
	doctypeDeclarationColor := aTextColor
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endCDataHighlightPosition: aPosition [
	self
		endHighlight: cdataHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endCommentHighlightPosition: aPosition [
	self
		endHighlight: commentHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endDeclarationHighlightPosition: aPosition [
	self
		endHighlight: declarationHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endDoctypeDeclarationHighlightPosition: aPosition [
	self
		endHighlight: doctypeDeclarationHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endEntityReferenceHighlightPosition: aPosition [
	self
		endHighlight: entityReferenceHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endNameHighlightPosition: aPosition [
	self
		endHighlight: nameHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endPIHighlightPosition: aPosition [
	self
		endHighlight: piHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endQuotedStringHighlightPosition: aPosition [
	self
		endHighlight: quotedStringHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endQuotedStringNameHighlightPosition: aPosition [
	self
		endHighlight: quotedStringNameHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endTagHighlightPosition: aPosition [
	self
		endHighlight: tagHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> endXMLDeclarationHighlightPosition: aPosition [
	self
		endHighlight: xmlDeclarationHighlight
		position: aPosition
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> entityReferenceColor [
	^ entityReferenceColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> entityReferenceColor: aTextColor [
	entityReferenceColor := aTextColor
]

{ #category : #initialization }
GT4XMLDocumentHighlighter >> initializeColorsWithDefaults: aDefaults [
	super initializeColorsWithDefaults: aDefaults.

	self
		xmlDeclarationColor: aDefaults xmlDeclarationColor;
		doctypeDeclarationColor: aDefaults doctypeDeclarationColor;
		piColor: aDefaults piColor;
		declarationColor: aDefaults declarationColor;
		tagColor: aDefaults tagColor;
		nameColor: aDefaults nameColor;
		quotedStringNameColor: aDefaults quotedStringNameColor;
		quotedStringColor: aDefaults quotedStringColor;
		entityReferenceColor: aDefaults entityReferenceColor;
		commentColor: aDefaults commentColor;
		cdataColor: aDefaults cdataColor.
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> nameColor [
	^ nameColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> nameColor: aTextColor [
	nameColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> piColor [
	^ piColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> piColor: aTextColor [
	piColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> quotedStringColor [
	^ quotedStringColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> quotedStringColor: aTextColor [
	quotedStringColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> quotedStringNameColor [
	^ quotedStringNameColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> quotedStringNameColor: aTextColor [
	quotedStringNameColor := aTextColor
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startCDataHighlightPosition: aPosition [
	cdataHighlight :=
		self
			newHighlightColor: self cdataColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startCommentHighlightPosition: aPosition [
	commentHighlight :=
		self
			newHighlightColor: self commentColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startDeclarationHighlightPosition: aPosition [
	declarationHighlight :=
		self
			newHighlightColor: self declarationColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startDoctypeDeclarationHighlightPosition: aPosition [
	doctypeDeclarationHighlight :=
		self
			newHighlightColor: self doctypeDeclarationColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startEntityReferenceHighlightPosition: aPosition [
	entityReferenceHighlight :=
		self
			newHighlightColor: self entityReferenceColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startNameHighlightPosition: aPosition [
	nameHighlight :=
		self
			newHighlightColor: self nameColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startPIHighlightPosition: aPosition [
	piHighlight :=
		self
			newHighlightColor: self piColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startQuotedStringHighlightPosition: aPosition [
	quotedStringHighlight :=
		self
			newHighlightColor: self quotedStringColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startQuotedStringNameHighlightPosition: aPosition [
	quotedStringNameHighlight :=
		self
			newHighlightColor: self quotedStringNameColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startTagHighlightPosition: aPosition [
	tagHighlight :=
		self
			newHighlightColor: self tagColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
GT4XMLDocumentHighlighter >> startXMLDeclarationHighlightPosition: aPosition [
	xmlDeclarationHighlight :=
		self
			newHighlightColor: self xmlDeclarationColor
			position: aPosition
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> tagColor [
	^ tagColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> tagColor: aTextColor [
	tagColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> xmlDeclarationColor [
	^ xmlDeclarationColor
]

{ #category : #accessing }
GT4XMLDocumentHighlighter >> xmlDeclarationColor: aTextColor [
	xmlDeclarationColor := aTextColor
]
