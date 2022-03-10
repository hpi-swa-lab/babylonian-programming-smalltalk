A BPSwimlaneLineMorph is used as a line in the BPSwimlane. It is responsible for displaying a BPTraceValue and BPLabelMorph.
Further, it adds visual stack bars to show the depth of the trace value in the stack trace, which on click navigates to the trace value's originating method.
A click on the displayed trace value itself opens its object properties.
A double click on the label-value-pair-morph flash all corresponding BPAnnotationMorphs and sibling label-value-pair-morph with trace values from the same annotation that are in the world.