"
This class stores the default highlight TextColors used by the document highlighter. It gets the initial defaults from Shout text styling.
"
Class {
	#name : #GT4XMLDocumentHighlightDefaults,
	#superclass : #GT4XMLHighlightDefaults,
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
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultCDataColor [
	^ defaultCDataColor
		ifNil: [defaultCDataColor := self textColorForShoutProperty: #primitive]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultCDataColor: aTextColor [
	defaultCDataColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultCommentColor [
	^ defaultCommentColor
		ifNil: [defaultCommentColor :=  self textColorForShoutProperty: #comment]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultCommentColor: aTextColor [
	defaultCommentColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultDeclarationColor [
	^ defaultDeclarationColor
		ifNil: [defaultDeclarationColor := self textColorForShoutProperty: #super]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultDeclarationColor: aTextColor [
	defaultDeclarationColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultDoctypeDeclarationColor [
	^ defaultDoctypeDeclarationColor
		ifNil: [
			defaultDoctypeDeclarationColor :=
				self textColorForShoutProperty: #super]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultDoctypeDeclarationColor: aTextColor [
	defaultDoctypeDeclarationColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultEntityReferenceColor [
	^ defaultEntityReferenceColor
		ifNil: [
			defaultEntityReferenceColor :=
				self textColorForShoutProperty: #character]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultEntityReferenceColor: aTextColor [
	defaultEntityReferenceColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultNameColor [
	^ defaultNameColor
		ifNil: [defaultNameColor := self textColorForShoutProperty: #instVar]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultNameColor: aTextColor [
	defaultNameColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultPIColor [
	^ defaultPIColor
		ifNil: [defaultPIColor := self textColorForShoutProperty: #primitive]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultPIColor: aTextColor [
	defaultPIColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultPrimaryMarkupColor: aTextColor [
	self
		defaultDeclarationColor: aTextColor;
		defaultTagColor: aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultQuotedStringColor [
	^ defaultQuotedStringColor
		ifNil: [defaultQuotedStringColor := self textColorForShoutProperty: #string]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultQuotedStringColor: aTextColor [
	defaultQuotedStringColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultQuotedStringNameColor [
	^ defaultQuotedStringNameColor
		ifNil: [
			defaultQuotedStringNameColor :=
				self textColorForShoutProperty: #self]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultQuotedStringNameColor: aTextColor [
	defaultQuotedStringNameColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultSecondaryMarkupColor: aTextColor [
	self
		defaultXMLDeclarationColor: aTextColor;
		defaultDoctypeDeclarationColor: aTextColor;
		defaultPIColor: aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultTagColor [
	^ defaultTagColor
		ifNil: [defaultTagColor := self textColorForShoutProperty: #instVar]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultTagColor: aTextColor [
	defaultTagColor := aTextColor
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultXMLDeclarationColor [
	^ defaultXMLDeclarationColor
		ifNil: [defaultXMLDeclarationColor := self textColorForShoutProperty: #primitive]
]

{ #category : #accessing }
GT4XMLDocumentHighlightDefaults class >> defaultXMLDeclarationColor: aTextColor [
	defaultXMLDeclarationColor := aTextColor
]

{ #category : #'class initialization' }
GT4XMLDocumentHighlightDefaults class >> resetDefaults [
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

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> cdataColor [
	^ self class defaultCDataColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> commentColor [
	^ self class defaultCommentColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> declarationColor [
	^ self class defaultDeclarationColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> doctypeDeclarationColor [
	^ self class defaultDoctypeDeclarationColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> entityReferenceColor [
	^ self class defaultEntityReferenceColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> nameColor [
	^ self class defaultNameColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> piColor [
	^ self class defaultPIColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> quotedStringColor [
	^ self class defaultQuotedStringColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> quotedStringNameColor [
	^ self class defaultQuotedStringNameColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> tagColor [
	^ self class defaultTagColor
]

{ #category : #defaults }
GT4XMLDocumentHighlightDefaults >> xmlDeclarationColor [
	^ self class defaultXMLDeclarationColor
]
