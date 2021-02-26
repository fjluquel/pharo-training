Class {
	#name : #DummyTest,
	#superclass : #BabyMock2TestCase,
	#category : #'MyPackage-Test'
}

{ #category : #tests }
DummyTest >> testHelloWorld [ 
	self assert: (Dummy new helloWorld) equals: 'Hello, world!'
]
