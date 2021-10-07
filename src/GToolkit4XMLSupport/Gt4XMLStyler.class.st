Class {
	#name : #Gt4XMLStyler,
	#superclass : #BlTextStyler,
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
		'commentHighlight',
		'highlights'
	],
	#category : 'GToolkit4XMLSupport'
}

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endCDataHighlightPosition: aPosition [
	self
		endHighlight: cdataHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endCommentHighlightPosition: aPosition [
	self
		endHighlight: commentHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endDeclarationHighlightPosition: aPosition [
	self
		endHighlight: declarationHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endDoctypeDeclarationHighlightPosition: aPosition [
	self
		endHighlight: doctypeDeclarationHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endEntityReferenceHighlightPosition: aPosition [
	self
		endHighlight: entityReferenceHighlight
		position: aPosition
]

{ #category : #styling }
Gt4XMLStyler >> endHighlight: aHighlightOrNil position: aPosition [
	aHighlightOrNil
		ifNotNil: [aHighlightOrNil end: aPosition]
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endNameHighlightPosition: aPosition [
	self
		endHighlight: nameHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endPIHighlightPosition: aPosition [
	self
		endHighlight: piHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endQuotedStringHighlightPosition: aPosition [
	self
		endHighlight: quotedStringHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endQuotedStringNameHighlightPosition: aPosition [
	self
		endHighlight: quotedStringNameHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endTagHighlightPosition: aPosition [
	self
		endHighlight: tagHighlight
		position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> endXMLDeclarationHighlightPosition: aPosition [
	self
		endHighlight: xmlDeclarationHighlight
		position: aPosition
]

{ #category : #initialization }
Gt4XMLStyler >> initialize [
	super initialize.
	self initializeHighlights.
	xmlDeclarationColor := Color green muchDarker.
	doctypeDeclarationColor := Color black.
	declarationColor := Color black.
	piColor := Color black.
	tagColor := Color blue darker.
	nameColor := Color blue darker.
	quotedStringNameColor := Color cyan muchDarker.
	quotedStringColor := Color magenta muchDarker.
	entityReferenceColor := Color black.
	cdataColor := Color black.
	commentColor := Color gray
]

{ #category : #initialization }
Gt4XMLStyler >> initializeHighlights [
	highlights := OrderedCollection new
]

{ #category : #styling }
Gt4XMLStyler >> newHighlightColor: aColor position: aPosition [
	^ aColor ifNotNil: [
		highlights addLast:
			(Gt4XMLHighlightedToken new
				color: aColor;
				start: aPosition)]
]

{ #category : #styling }
Gt4XMLStyler >> privateStyle: aText [
	| highlightingParser string |
	string := aText asString.
	self initializeHighlights.
	highlightingParser := (Gt4XMLHighlightingParser on: string)
		highlighter: self;
		parser.
	[highlightingParser parseDocument] on: XMLParserException do: [:exception | 
		(self newHighlightColor: Color red position: highlightingParser currentPosition)
			end: string size].
	highlights do: [ :aHighlight |
		aHighlight end ifNotNil: [
			(aText from: aHighlight start to: aHighlight end)
				attribute: (BlTextForegroundAttribute new paint: aHighlight color) ] ].
	^ aText
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startCDataHighlightPosition: aPosition [
	cdataHighlight :=
		self
			newHighlightColor: cdataColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startCommentHighlightPosition: aPosition [
	commentHighlight :=
		self
			newHighlightColor: commentColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startDeclarationHighlightPosition: aPosition [
	declarationHighlight :=
		self
			newHighlightColor: declarationColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startDoctypeDeclarationHighlightPosition: aPosition [
	doctypeDeclarationHighlight :=
		self
			newHighlightColor: doctypeDeclarationColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startEntityReferenceHighlightPosition: aPosition [
	entityReferenceHighlight :=
		self
			newHighlightColor: entityReferenceColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startNameHighlightPosition: aPosition [
	nameHighlight :=
		self
			newHighlightColor: nameColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startPIHighlightPosition: aPosition [
	piHighlight :=
		self
			newHighlightColor: piColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startQuotedStringHighlightPosition: aPosition [
	quotedStringHighlight :=
		self
			newHighlightColor: quotedStringColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startQuotedStringNameHighlightPosition: aPosition [
	quotedStringNameHighlight :=
		self
			newHighlightColor: quotedStringNameColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startTagHighlightPosition: aPosition [
	tagHighlight :=
		self
			newHighlightColor: tagColor
			position: aPosition
]

{ #category : #'highlighting - positions' }
Gt4XMLStyler >> startXMLDeclarationHighlightPosition: aPosition [
	xmlDeclarationHighlight :=
		self
			newHighlightColor: xmlDeclarationColor
			position: aPosition
]
