Extension { #name : #AbstractFileReference }

{ #category : #'*GToolkit4XMLSupport' }
AbstractFileReference >> gtXmlFor: aView [
	<gtView>
	(self isFile and: [ (GtFileUtility mimeTypeOfExtension: self extension) 
		= ZnMimeType applicationXml ]) ifFalse: [ ^ aView empty ].
	^ aView explicit
		title: 'XML';
		priority: 1;
		actionButtonIcon: BrGlamorousIcons tree asElement 
			action: [ :aButton | aButton phlow spawnObject: (XMLDOMParser parse: self contents) ];
		stencil: [ | editorElement textEditor text |
			textEditor := BrTextEditor new.
			textEditor styler: Gt4XMLStyler new.
			editorElement := BrEditorElement new.
			editorElement editor: textEditor.
			text := self contents asRopedText.
			text glamorousCodeFontDo: #beNotOverwritableByStyler; glamorousCodeSizeDo: #beNotOverwritableByStyler.
			textEditor text: text.
			editorElement
				padding: (BlInsets all: 10);
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ].
			editorElement ]
]
