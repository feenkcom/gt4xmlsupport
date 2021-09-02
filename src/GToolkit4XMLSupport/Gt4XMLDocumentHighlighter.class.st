"
This class is a highlighter to highlight XML document Text objects using XMLHighlights.

"
Class {
	#name : 'Gt4XMLDocumentHighlighter',
	#superclass : 'Gt4XMLHighlighter',
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
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> cdataColor [
	^ cdataColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> cdataColor: aTextColor [
	cdataColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> commentColor [
	^ commentColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> commentColor: aTextColor [
	commentColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> declarationColor [
	^ declarationColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> declarationColor: aTextColor [
	declarationColor := aTextColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlighter >> defaultsClass [
	^ Gt4XMLDocumentHighlightDefaults
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> doctypeDeclarationColor [
	^ doctypeDeclarationColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> doctypeDeclarationColor: aTextColor [
	doctypeDeclarationColor := aTextColor
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endCDataHighlightPosition: aPosition [
	self
		endHighlight: cdataHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endCommentHighlightPosition: aPosition [
	self
		endHighlight: commentHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endDeclarationHighlightPosition: aPosition [
	self
		endHighlight: declarationHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endDoctypeDeclarationHighlightPosition: aPosition [
	self
		endHighlight: doctypeDeclarationHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endEntityReferenceHighlightPosition: aPosition [
	self
		endHighlight: entityReferenceHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endNameHighlightPosition: aPosition [
	self
		endHighlight: nameHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endPIHighlightPosition: aPosition [
	self
		endHighlight: piHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endQuotedStringHighlightPosition: aPosition [
	self
		endHighlight: quotedStringHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endQuotedStringNameHighlightPosition: aPosition [
	self
		endHighlight: quotedStringNameHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endTagHighlightPosition: aPosition [
	self
		endHighlight: tagHighlight
		position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> endXMLDeclarationHighlightPosition: aPosition [
	self
		endHighlight: xmlDeclarationHighlight
		position: aPosition
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> entityReferenceColor [
	^ entityReferenceColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> entityReferenceColor: aTextColor [
	entityReferenceColor := aTextColor
]

{ #category : 'initialization' }
Gt4XMLDocumentHighlighter >> initializeColorsWithDefaults: aDefaults [
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

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> nameColor [
	^ nameColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> nameColor: aTextColor [
	nameColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> piColor [
	^ piColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> piColor: aTextColor [
	piColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> quotedStringColor [
	^ quotedStringColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> quotedStringColor: aTextColor [
	quotedStringColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> quotedStringNameColor [
	^ quotedStringNameColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> quotedStringNameColor: aTextColor [
	quotedStringNameColor := aTextColor
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startCDataHighlightPosition: aPosition [
	cdataHighlight :=
		self
			newHighlightColor: self cdataColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startCommentHighlightPosition: aPosition [
	commentHighlight :=
		self
			newHighlightColor: self commentColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startDeclarationHighlightPosition: aPosition [
	declarationHighlight :=
		self
			newHighlightColor: self declarationColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startDoctypeDeclarationHighlightPosition: aPosition [
	doctypeDeclarationHighlight :=
		self
			newHighlightColor: self doctypeDeclarationColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startEntityReferenceHighlightPosition: aPosition [
	entityReferenceHighlight :=
		self
			newHighlightColor: self entityReferenceColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startNameHighlightPosition: aPosition [
	nameHighlight :=
		self
			newHighlightColor: self nameColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startPIHighlightPosition: aPosition [
	piHighlight :=
		self
			newHighlightColor: self piColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startQuotedStringHighlightPosition: aPosition [
	quotedStringHighlight :=
		self
			newHighlightColor: self quotedStringColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startQuotedStringNameHighlightPosition: aPosition [
	quotedStringNameHighlight :=
		self
			newHighlightColor: self quotedStringNameColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startTagHighlightPosition: aPosition [
	tagHighlight :=
		self
			newHighlightColor: self tagColor
			position: aPosition
]

{ #category : 'highlighting - positions' }
Gt4XMLDocumentHighlighter >> startXMLDeclarationHighlightPosition: aPosition [
	xmlDeclarationHighlight :=
		self
			newHighlightColor: self xmlDeclarationColor
			position: aPosition
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> tagColor [
	^ tagColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> tagColor: aTextColor [
	tagColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> xmlDeclarationColor [
	^ xmlDeclarationColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlighter >> xmlDeclarationColor: aTextColor [
	xmlDeclarationColor := aTextColor
]
