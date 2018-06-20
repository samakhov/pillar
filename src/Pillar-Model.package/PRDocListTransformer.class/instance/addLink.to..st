adding
addLink: aReference to: aDocument
	aDocument
		add:
			((PRInternalLink reference: aReference)
				addAll: {(PRText content: 'See more')};
				yourself).