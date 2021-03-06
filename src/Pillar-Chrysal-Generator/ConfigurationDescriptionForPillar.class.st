"
I'm just holding some descriptions that are used to generate the configurationForPillar class.


ChrysalConfigurationBuilder new 
	configurationRootClass: ChrysalPillarishConfiguration;
	defineConfigurationClassNamed: #ConfigurationForPillar 
	packagedIn: 'Pillar-Chrysal'; 
	withDescriptionItems: ConfigurationDescriptionForPillar itemDescriptionForPillar
"
Class {
	#name : #ConfigurationDescriptionForPillar,
	#superclass : #Object,
	#category : 'Pillar-Chrysal-Generator'
}

{ #category : #sample }
ConfigurationDescriptionForPillar class >> itemDescriptionForPillar [
	^ {
	(PathConfigurationItem new
 		propertyName: #bibFile;
 		default: 'book.bib';
 		explanation: 'Identify the file to be taken as input for the bibliography. This is the .bib file used to resolve the ${cite:ref=Key}$ annotation.';
 		yourself)
	.
	(StringConfigurationItem new
		propertyName: #title;
		default: 'my super cool book';
		yourself).
	(StringConfigurationItem new
		propertyName: #attribution;
		default: 'me, myself and I';
		yourself).
	(NumberConfigurationItem new
		propertyName: #headingLevelOffset;
		explanation:
			'Indicate how to convert from the level of a Pillar heading to the level of heading in your exported document.
	For example, a headingLevelOffset of 3 converts a 1st level Pillar heading to an <h4>in HTML';
		default: 0;
		yourself).
	(StringConfigurationItem new
		propertyName: #series;
		default: 'Square Bracket Associate Collection';
		yourself).
	(StringConfigurationItem new
		propertyName: #keywords;
		default: 'Pharo';
		yourself).
	(PathConfigurationItem new
		propertyName: #outputDirectory;
		default: 'build').
	(FolderConfigurationItem new
		propertyName: #baseDirectory;
		default: '.').
	(FileConfigurationItem new
		propertyName: #outputFile;
		default: 'output';
		explanation:
			'If separateOutputFiles is false, indicate the name of the output file. This can also be a write stream.').
	(FileConfigurationItem new
		propertyName: #mainDocument;
		default: 'book').
	(FileConfigurationItem new
		propertyName: #inputFile;
		default: 'book';
		explanation:
			'The Pillar file that must be transformed. You can also specify an input file at the end of the command-line interface. Previously there was no default value').
	(StringConfigurationItem new
		propertyName: #latexTemplate;
		default: '_support/templates/main.latex.mustache').
	(BooleanConfigurationItem new
		propertyName: #scrambledEmailAddresses;
		beFalseAsDefault).
	(BooleanConfigurationItem new
		propertyName: #separateOutputFiles;
		explanation:
			'If true, each input file is exported to one output file. If false (the default), all input files are exported to outputFile.';
		beFalseAsDefault).
	(BooleanConfigurationItem new
		propertyName: #renderStructureAsSlide;
		explanation:
			'When true (the default), Pillar will create a dedicated slide for each Pillar header. This parameter is meaningless when generating a written document';
		beTrueAsDefault).
	(StringConfigurationItem new
		propertyName: #latexChapterTemplate;
		default: '_support/templates/chapter.latex.mustache').
	(StringConfigurationItem new
		propertyName: #htmlTemplate;
		default: '_support/templates/html.mustache').
	(StringConfigurationItem new
		propertyName: #htmlChapterTemplate;
		default: '_support/templates/html.mustache').
	(NewLineConfigurationItem new
		propertyName: #newLine;
		defaultIsPlatform).
	(StringConfigurationItem new
		propertyName: #latexWriter;
		default: #latex:sbabook;
		yourself)	
		.
	(StringConfigurationItem new
		propertyName: #htmlWriter;
		default: #html;
		yourself)	
		.
	(NumberConfigurationItem new
		propertyName: #slideInTemplateForDeckJS;
		explanation: 'Number of slides in Template: Indicate the number of slides created by the DeckJS template. This is important to create anchors.';
		default: 1;
		yourself).
	(CodeBlockDefaultLanguageItem new)
	.
	(CompositeConfigurationItem new
		propertyName: #levelSpecification;
		default: #PRTitlePrinterSpecification;
		fields: #(level renderAs capitalization numbering headerSize);
		yourself)
	.
	(ListConfigurationItem new
		propertyName: #levels;
		default: #OrderedCollection;
		element: #levelSpecification;
		yourself)
	.
	(PathConfigurationItem new
		propertyName: #tocFile;
		explanation: 'Identify the file to be taken as input for the root of the table of contents. When it is not specified, the table of contents will not be computed and displayed';
		yourself)
	}
]
