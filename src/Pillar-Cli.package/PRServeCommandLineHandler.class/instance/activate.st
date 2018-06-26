activation
activate
	| baseurl |
	baseurl := (self optionAt: 'baseurl' ifAbsent: [ '' ]).
	
	FileStream stdout nextPutAll:
		'Serving website at: http://localhost:', '1800', '/', baseurl; lf.
	
	(ZnServer defaultOn: 1800) start.
	
	ZnServer default delegate: (
	  (ZnStaticFileServerDelegate new)
	     prefixFromString: baseurl;
	     directory: self project baseDirectory / '_result/html/';
	     yourself).