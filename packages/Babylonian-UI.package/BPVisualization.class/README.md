A BPVisualization transforms the text of probes to visual projections for easier reading. Visualizes the values contained in the collection traceValues and draws itself over traceValuesMorph. scaleY is a BPScale used to eg project your values to the canvas appropriately.

Subclasses must provide following features:

instance-sided:
legendMorph: A Visualization isn't much without an explaining legend for interpreting your visualization data. Return a Morph containing the legend which will be displayed besides your visualization.
visualizationMorph: The visualization itself provided as a Morph.

class-sided:
newWithValues: forMorph: : Default constructor. Define a default scale here too.
supportedClass: : Which class is supported to be visualized? We assume homogeneous collections for traceValues.
