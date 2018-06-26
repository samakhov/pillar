activation
activate
	| baseurl |
	baseurl := (self optionAt: 'baseurl' ifAbsent: [ '' ]).
	
	(ZnServer defaultOn: 1800) start.
	
	ZnServer default delegate: (
	  (ZnStaticFileServerDelegate new)
	     prefixFromString: baseurl;
	     directory: self project baseDirectory;
	     yourself).