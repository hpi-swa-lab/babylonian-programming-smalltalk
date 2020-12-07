A BPExampleToTest is a serializer that converts an example object into a test method.
The test method is used to store the example (so it can be transfered over a vcs) 
and to make it executable by users who aren't using the Babylonian Browser and a CI-System.

How to use: 'BPExampleToTest forExample: anExample serialized'.
This call will create a test method. It is stored in a class-category and class named after the original class-category and class of the method under test, but appended by '-Test'

This class will not create an assertion. To create it use BPExampleToMethodTest