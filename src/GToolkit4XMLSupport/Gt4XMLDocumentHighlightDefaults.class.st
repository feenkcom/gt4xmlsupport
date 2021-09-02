"
This class stores the default highlight TextColors used by the document highlighter. It gets the initial defaults from Shout text styling.

"
Class {
	#name : 'Gt4XMLDocumentHighlightDefaults',
	#superclass : 'Gt4XMLHighlightDefaults',
	#classInstVars : [
		'defaultXMLDeclarationColor',
		'defaultDoctypeDeclarationColor',
		'defaultPIColor',
		'defaultDeclarationColor',
		'defaultTagColor',
		'defaultNameColor',
		'defaultQuotedStringNameColor',
		'defaultQuotedStringColor',
		'defaultEntityReferenceColor',
		'defaultCommentColor',
		'defaultCDataColor'
	],
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultCDataColor [
	^ defaultCDataColor
		ifNil: [defaultCDataColor := self textColorForShoutProperty: #primitive]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultCDataColor: aTextColor [
	defaultCDataColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultCommentColor [
	^ defaultCommentColor
		ifNil: [defaultCommentColor :=  self textColorForShoutProperty: #comment]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultCommentColor: aTextColor [
	defaultCommentColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultDeclarationColor [
	^ defaultDeclarationColor
		ifNil: [defaultDeclarationColor := self textColorForShoutProperty: #super]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultDeclarationColor: aTextColor [
	defaultDeclarationColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultDoctypeDeclarationColor [
	^ defaultDoctypeDeclarationColor
		ifNil: [
			defaultDoctypeDeclarationColor :=
				self textColorForShoutProperty: #super]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultDoctypeDeclarationColor: aTextColor [
	defaultDoctypeDeclarationColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultEntityReferenceColor [
	^ defaultEntityReferenceColor
		ifNil: [
			defaultEntityReferenceColor :=
				self textColorForShoutProperty: #character]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultEntityReferenceColor: aTextColor [
	defaultEntityReferenceColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultNameColor [
	^ defaultNameColor
		ifNil: [defaultNameColor := self textColorForShoutProperty: #instVar]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultNameColor: aTextColor [
	defaultNameColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultPIColor [
	^ defaultPIColor
		ifNil: [defaultPIColor := self textColorForShoutProperty: #primitive]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultPIColor: aTextColor [
	defaultPIColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultPrimaryMarkupColor: aTextColor [
	self
		defaultDeclarationColor: aTextColor;
		defaultTagColor: aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultQuotedStringColor [
	^ defaultQuotedStringColor
		ifNil: [defaultQuotedStringColor := self textColorForShoutProperty: #string]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultQuotedStringColor: aTextColor [
	defaultQuotedStringColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultQuotedStringNameColor [
	^ defaultQuotedStringNameColor
		ifNil: [
			defaultQuotedStringNameColor :=
				self textColorForShoutProperty: #self]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultQuotedStringNameColor: aTextColor [
	defaultQuotedStringNameColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultSecondaryMarkupColor: aTextColor [
	self
		defaultXMLDeclarationColor: aTextColor;
		defaultDoctypeDeclarationColor: aTextColor;
		defaultPIColor: aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultTagColor [
	^ defaultTagColor
		ifNil: [defaultTagColor := self textColorForShoutProperty: #instVar]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultTagColor: aTextColor [
	defaultTagColor := aTextColor
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultXMLDeclarationColor [
	^ defaultXMLDeclarationColor
		ifNil: [defaultXMLDeclarationColor := self textColorForShoutProperty: #primitive]
]

{ #category : 'accessing' }
Gt4XMLDocumentHighlightDefaults class >> defaultXMLDeclarationColor: aTextColor [
	defaultXMLDeclarationColor := aTextColor
]

{ #category : 'class initialization' }
Gt4XMLDocumentHighlightDefaults class >> resetDefaults [
	super resetDefaults.

	defaultXMLDeclarationColor := nil.
	defaultDoctypeDeclarationColor := nil.
	defaultPIColor := nil.
	defaultDeclarationColor := nil.
	defaultTagColor := nil.
	defaultNameColor := nil.
	defaultQuotedStringNameColor := nil.
	defaultQuotedStringColor := nil.
	defaultEntityReferenceColor := nil.
	defaultCommentColor := nil.
	defaultCDataColor := nil.
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> cdataColor [
	^ self class defaultCDataColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> commentColor [
	^ self class defaultCommentColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> declarationColor [
	^ self class defaultDeclarationColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> doctypeDeclarationColor [
	^ self class defaultDoctypeDeclarationColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> entityReferenceColor [
	^ self class defaultEntityReferenceColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> nameColor [
	^ self class defaultNameColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> piColor [
	^ self class defaultPIColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> quotedStringColor [
	^ self class defaultQuotedStringColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> quotedStringNameColor [
	^ self class defaultQuotedStringNameColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> tagColor [
	^ self class defaultTagColor
]

{ #category : 'defaults' }
Gt4XMLDocumentHighlightDefaults >> xmlDeclarationColor [
	^ self class defaultXMLDeclarationColor
]
