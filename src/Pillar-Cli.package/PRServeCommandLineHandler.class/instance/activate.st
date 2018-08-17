activation
activate
	| baseurl watch port watcher |
	baseurl := (self optionAt: 'baseurl' ifAbsent: [ '' ]).
	watch := self hasOption:  #w.
	port := (self optionAt: 'p' ifPresent: [ :portString | portString asInteger ] ifAbsent: [8080]).
	
	self stdout nextPutAll:
		'Serving website at: http://localhost:', port asString, '/', baseurl; lf.
	
	(ZnServer defaultOn: port) start.
	
	ZnServer default delegate: (
	  (ZnStaticFileServerDelegate new)
	     prefixFromString: baseurl;
	     directory: self project baseDirectory / '_result/html/';
	     yourself).

	
	watch ifTrue: [
		watcher := PRWatcher new.
		watcher project: self project.
		watcher start].