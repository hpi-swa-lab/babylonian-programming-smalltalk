This class is responsible for serialising any given example without needing specific options. 
Instead of calling an individual serializer set by the user for an example, it picks the first suited class automatically and returns the result by calling #serialize. The knowledge of what classes to use is stored in #serializationClasses, which should implement the interface of BPExampleToTest. 

The method #serializeActiveExamples is a helper method to quickly serialize all current active examples in the image.