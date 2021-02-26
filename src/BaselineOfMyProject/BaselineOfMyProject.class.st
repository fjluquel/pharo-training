Class {
	#name : #BaselineOfMyProject,
	#superclass : #BaselineOf,
	#category : #BaselineOfMyProject
}

{ #category : #baselines }
BaselineOfMyProject >> baseline: spec [ 
<baseline>
spec
	for: #common 
	do: [ spec blessing: #baseline .
		self declareBabyMock2In: spec.
		self declarePackagesIn: spec.
		self declareGroupsIn: spec ]
]

{ #category : #baselines }
BaselineOfMyProject >> declareBabyMock2In: spec [ 
	spec
		project: 'BabyMock2'
		with: [ spec
			className: #ConfigurationOfBabyMock2 ;
			versionString: #stable;
			repository: 'http://smalltalkhub.com/mc/zeroflag/BabyMock2/main/' ].
		^ spec
]

{ #category : #baselines }
BaselineOfMyProject >> declareGroupsIn: spec [ 
	spec
		group: 'core'
		with: #(#'MyPackage');
		group: 'tests'
		with: #(#'MyPackage-Tests');
		group: 'default'
		with: #(#'core' 'tests')
]

{ #category : #baselines }
BaselineOfMyProject >> declarePackagesIn: spec [
	spec
		package: #'MyPackage';
		package: #'MyPackage-Test' with: [ spec requires: #('MyPackage') ]
]
