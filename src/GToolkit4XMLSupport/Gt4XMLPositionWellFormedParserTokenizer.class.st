"
This class is a tokenizer for well-formed XML that tracks token start/end positions. Does not support entities or validation.

"
Class {
	#name : #Gt4XMLPositionWellFormedParserTokenizer,
	#superclass : #XMLWellFormedParserTokenizer,
	#instVars : [
		'isInEntityReference',
		'isInAttlistDeclaration'
	],
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextAttlistDeclaration [
	isInAttlistDeclaration := true.
	super nextAttlistDeclaration.
	isInAttlistDeclaration := false.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextAttributeName [
	| name |

	isInAttlistDeclaration
		ifTrue: [
			driver handleStartNamePosition: self currentPosition + 1.
			name := super nextAttributeName.
			driver handleEndNamePosition: self currentPosition]
		ifFalse: [
			driver handleStartQuotedStringNamePosition: self currentPosition + 1.
			name := super nextAttributeName.
			driver handleEndQuotedStringNamePosition: self currentPosition].

	^ name.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextAttributeValue [
	| value |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	value := super nextAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ value.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextCDataSection [
	driver handleStartCDataPosition: self currentPosition - 1.
	super nextCDataSection.
	driver handleEndCDataPosition: self currentPosition.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextCharacterReferenceOnCharacterStream [
	| result |

	driver handleStartEntityReferencePosition: self currentPosition.
	result := super nextCharacterReferenceOnCharacterStream.
	driver handleEndEntityReferencePosition: self currentPosition.

	^ result.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextComment [
	driver handleStartCommentPosition: self currentPosition - 1.
	super nextComment.
	driver handleEndCommentPosition: self currentPosition.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextDoctypeDeclaration [
	driver handleStartDoctypeDeclarationPosition: self currentPosition - 1.
	super nextDoctypeDeclaration.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextElementName [
	| name |

	driver handleStartNamePosition: self currentPosition + 1.
	name := super nextElementName.
	driver handleEndNamePosition: self currentPosition.

	^ name.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextElementNameOnCharacterStream [
	driver handleStartNamePosition: self currentPosition + 1.
	super nextElementNameOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextEndDoctypeDeclaration [
	super nextEndDoctypeDeclaration.
	driver handleEndDoctypeDeclarationPosition: self currentPosition.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextEndTag [
	| startPosition |

	startPosition := self currentPosition + 2.
	super nextEndTag.
	driver
		handleStartNamePosition: startPosition;
		handleEndNamePosition: self currentPosition - 1.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextEntityName [
	isInEntityReference
		ifTrue: [^ super nextEntityName]
		ifFalse: [| entityName |
			driver handleStartNamePosition: self currentPosition + 1.
			entityName := super nextEntityName.
			driver handleEndNamePosition: self currentPosition.
			^ entityName]
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextEntityValue [
	| value |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	value := super nextEntityValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ value.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextGeneralEntityReferenceOnCharacterStream [
	isInEntityReference := true.
	driver handleStartEntityReferencePosition: self currentPosition.
	self nextEntityName.
	driver handleEndEntityReferencePosition: self currentPosition + 1.
	self nextEntityReferenceTerminator.
	isInEntityReference := false.

	^ nil.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextNmtokenOnCharacterStream [
	driver handleStartNamePosition: self currentPosition + 1.
	super nextNmtokenOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextNotationName [
	| name |

	driver handleStartNamePosition: self currentPosition + 1.
	name := super nextNotationName.
	driver handleEndNamePosition: self currentPosition.

	^ name.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextNotationNameOnCharacterStream [
	driver handleStartNamePosition: self currentPosition + 1.
	super nextNotationNameOnCharacterStream.
	driver handleEndNamePosition: self currentPosition.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextPIData [
	| nextChar quotedStringNameStart quotedStringStart quote |

	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			quotedStringStart
				ifNil: [
					quotedStringNameStart
						ifNil: [
							nextChar isXMLNameStartChar
								ifTrue: [quotedStringNameStart := self currentPosition]
								ifFalse: [
									(nextChar == $"
										or: [nextChar == $'])
										ifTrue: [
											quote := nextChar.
											quotedStringStart := self currentPosition]]]
						ifNotNil: [
							nextChar isXMLNameChar
								ifFalse: [
									driver
										handleStartQuotedStringNamePosition:
											quotedStringNameStart;
										handleEndQuotedStringNamePosition:
											self currentPosition - 1.
									quotedStringNameStart := nil.
									(nextChar == $"
										or: [nextChar == $'])
										ifTrue: [
											quote := nextChar.
											quotedStringStart := self currentPosition]]]]
				ifNotNil: [
					nextChar == quote
						ifTrue: [
							driver
								handleStartQuotedStringPosition: quotedStringStart;
								handleEndQuotedStringPosition: self currentPosition.
							quotedStringStart := nil]]].
	"ignore unterminated strings, but handle terminating names"
	quotedStringNameStart
		ifNotNil: [
			driver
				handleStartQuotedStringNamePosition: quotedStringNameStart;
				handleEndQuotedStringNamePosition: self currentPosition - 1].

	self nextPITerminator.
	^ characterStream contents.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextPIWithTarget: aTarget [
	driver handleStartPIPosition: self currentPosition - (aTarget size + 1).
	super nextPIWithTarget: aTarget.
	driver handleEndPIPosition: self currentPosition.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextParameterEntityReference [
	isInEntityReference := true.
	driver handleStartEntityReferencePosition: self currentPosition.
	self nextEntityName.
	driver handleEndEntityReferencePosition: self currentPosition + 1.
	self nextEntityReferenceTerminator.
	isInEntityReference := false.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextParameterEntityReferenceInDeclaration [
	^ self nextParameterEntityReference
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextParameterEntityReferenceOnCharacterStream [
	^ self nextParameterEntityReference
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextPublicIDLiteral [
	| publicID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	publicID := super nextPublicIDLiteral.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ publicID.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextSubsetDeclaration [
	driver handleStartDeclaration: self currentPosition - 1.
	super nextSubsetDeclaration.
	driver handleEndDeclaration: self currentPosition.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextSystemIDLiteral [
	| systemID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteral.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ systemID.
]

{ #category : #'tokenizing - dtd' }
Gt4XMLPositionWellFormedParserTokenizer >> nextSystemIDLiteralWithoutURIFragment [
	| systemID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteralWithoutURIFragment.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ systemID.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextTag [
	driver handleStartTagPosition: self currentPosition.
	super nextTag.
	driver handleEndTagPosition: self currentPosition.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextXMLAttributeName: aName [
	| startPosition |

	startPosition := self currentPosition + 1.
	driver handleStartQuotedStringNamePosition: startPosition.
	super nextXMLAttributeName: aName.
	driver handleEndQuotedStringNamePosition: startPosition + aName size - 1.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextXMLDeclaration [
	driver handleStartXMLDeclarationPosition: self currentPosition - 4. "'<?xml' size"
	super nextXMLDeclaration.
	driver handleEndXMLDeclarationPosition: self currentPosition.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextXMLEncodingAttributeValue [
	| encoding |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	encoding := super nextXMLEncodingAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ encoding.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextXMLStandaloneAttributeValue [
	| yesOrNo |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	yesOrNo := super nextXMLStandaloneAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ yesOrNo.
]

{ #category : #tokenizing }
Gt4XMLPositionWellFormedParserTokenizer >> nextXMLVersionAttributeValue [
	| version |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	version := super nextXMLVersionAttributeValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ version.
]

{ #category : #initialization }
Gt4XMLPositionWellFormedParserTokenizer >> setDriver: aDriver stream: aStream readLimit: anInteger [
	super
		setDriver: aDriver
		stream: aStream
		readLimit: anInteger.

	isInAttlistDeclaration := false.
	isInEntityReference := false.
]
