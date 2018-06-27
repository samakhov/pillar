activation
activate
	| baseurl watch port watcher |
	baseurl := (self optionAt: 'baseurl' ifAbsent: [ '' ]).
	watch := (self optionAt: 'w' ifPresent: [ :ignore | true] ifAbsent: [false]).
	port := (self optionAt: 'p' ifPresent: [ :portString | portString asInteger ] ifAbsent: [8080]).
	
	FileStream stdout nextPutAll:
		'Serving website at: http://localhost:', port asString, '/', baseurl; lf.

	FileStream stdout nextPutAll:
		'Serving website at: http://localhost:', watch asString, '/', baseurl; lf.
		
	FileStream stdout nextPutAll:
		'Serving website at: http://localhost:', watch asString, '/', baseurl; lf.	
	
	(ZnServer defaultOn: port) start.
	
	ZnServer default delegate: (
	  (ZnStaticFileServerDelegate new)
	     prefixFromString: baseurl;
	     directory: self project baseDirectory / '_result/html/';
	     yourself).

	
	"watch ifTrue: [ "
		watcher := PRWatcher new.
		watcher project: self project.
		watcher start. "]."