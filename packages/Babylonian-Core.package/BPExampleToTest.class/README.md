A BPExampleToTest is a serializer that converts an BPExample object into a test method.
The test method is used to store the example (so it can be transferred over a vcs) 
and to make it executable by users who aren't using the Babylonian Browser and a CI-System.

How to use: 'BPExampleToTest serialize: anExample'.
This call will create a test method. It is stored in a class-category and class named after the original class-category and class of the method under test, but appended by '-Test'.

Subclasses are responsible for overriding 
- instance>>#buildMethodBody which is the serialized test code itself
- class>>#canSerialize which decides if an example is serializible by called subclass