# Interactions

## Open
- Execute `BPPrintbugger open`
- In a `BPBrowser`, click on `side pane`>`BPPrintbugger`
- Click on an example's extented menu (...)

## Adding & Removing Examples
- New examples can be added with the `add` to the far right and selecting an existing example from the menu
- In a lane, switch a display example with `switch`
- Remove an example by clicking `switch` and then the first option `none`
- Click on an example's extented menu (...)

## Method Navigation
- Click on an example (besides its editing fields)
- Click on a bar from the flame graph
- Click on a trace value's title

## Debugging
- Click on the pause-icon to start the Debugger from that point of time

## Managing Annotations
- Delete a single annotation with the x-icon besides a trace value
- Hide/Show all values from an annotation with the eye-icon besides a trace value
- Delete all annotations for an example by its extented menu (...)
- Deactivate an example to hide all its trace values

## Annotation Highlighting
- Double click on empty space around a trace value to highlight its originating annotation (given the responding morph is visible)

## Object Properties
- Click on a trace value to open its object properties

# Flame Graph
- One bar equals one method call stack (explorable by clicking)
- One color responds to one unique method (up to 10 colors supported)
- Most recent method call is the right-most bar

# Theme support
Has 
- Color of Transcript window border
- PluggableTextMorph color
- Scrollpane color
- Image font size

# Short Class Overview
Detailed documentation on the classes can be found in their responding class comments.

![image](https://user-images.githubusercontent.com/33000454/158612243-583c1bd5-92b5-4174-8713-e46ca7b2069c.png)


## BPPrintbugger
Left to right collection of all `BPPrintbuggerColumnMorphs`. Has a global context with `BPPrintbuggerContext`

## BPPrintbuggerContext
Saves all methods of multiple traces to have a consistent color mapping for the flame graphs used by `BPSwimlaneLineMorph`. Also knows which annotations of an example should be hidden in the visualization.

## BPPrintbuggerColumnMorph
One column in the Printbugger, containing a button and a `BPSwimlane`. Responsible for the switch logic, for example, displaying the selected example from the menu as a swimlane or deleting itself when `none` is selected.

## BPNilExample
The `none` option for the displayed menu when selecting an example in `BPPrintbuggerColumnMorph`. Doesn't result in a swimlane and might delete a `BPPrintbuggerColumnMorph` when excessive.

## BPSwimlane
Display of an example's trace values in chronological order. Listens to the given example trace's update events and updates accordingly. A top to bottom collection of `BPSwimlaneLineMorph`. Has a `BPPrintbuggerContext` to pass on.

## BPSwimlaneLineMorph
Responsible for displaying a trace value and creating the UI for its possible interactions / additional information. The halt button, method call stacks, label, filter etc.. Sets flame graph colors and hides values using the `BPPrintbuggerContext` of its belonging `BPSwimlane`.

## BPLabelMorph
The label of a trace value extended with deletion, a backup label and downsize (when filtered) logic. 
