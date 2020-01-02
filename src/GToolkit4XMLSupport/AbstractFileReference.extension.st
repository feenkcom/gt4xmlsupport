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
		actionDropdownButtonIcon: nil 
			label: 'XPath' 
			content: [ :b | 
			| editor |
			editor := BrEditor new look: BrGlamorousEditorLook.
			BlElement new
				constraintsDo: [:c | c horizontal exact: 200. c vertical fitContent];
				layout: BlLinearLayout horizontal;
				padding: (BlInsets all: 10);
				addChild: editor;
				addChild: (BrButton new look: BrGlamorousButtonWithIconLook; icon: BrGlamorousIcons search asElement; label: 'Search with XPath'; action: [ b phlow spawnObject: ((XMLDOMParser parse: self contents) xpath: editor editor text asString) ])];
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
