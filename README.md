# Babylonian Programming / Smalltalk [![Build Status Main](https://img.shields.io/github/workflow/status/hpi-swa-lab/babylonian-programming-smalltalk/testAndBuild/main?logo=github&label=main)](https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/actions/workflows/main.yml) [![Build Status Develop](https://img.shields.io/github/workflow/status/hpi-swa-lab/babylonian-programming-smalltalk/testAndBuild/develop?logo=github&label=develop)](https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/actions/workflows/main.yml)

A Smalltalk implementation of the Babylonian Programming System.

## How to install
1. Get [a recent trunk Squeak](http://www.squeak.org)
2. Load [Metacello](https://github.com/dalehenrich/metacello-work)
3. Finally, load Babylonian/S with the following command:

```Smalltalk
Metacello new
  baseline: 'BabylonianProgramming';
  repository: 'github://hpi-swa-lab/babylonian-programming-smalltalk/packages';
  load.
```

## Current State

![Babylonian/S screenshot](https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/blob/media/screenshot-for-readme.png?raw=true)


## Related Projects

- [Babylonian/JS][babylonian_js] and [Polyglot Babylonian Programming in VSC][babylonian_vsc]

## Related Publications

To cite this work, please use the [COP'19][cop19_paper] and the [Programming'19][prog19_paper] paper.
 
- Patrick Rein, Jens Lincke, Stefan Ramson, Toni Mattis, Fabio Niephaus, and
Robert Hirschfeld. *Implementing Babylonian/S by Putting Examples Into Contexts:
Tracing Instrumentation for Example-based Live Programming as a Use Case for
Context-oriented Programming*. In Proceedings of the [Workshop on
Context-oriented Programming (COP) 2019][cop19], co-located with the European
Conference on Object-oriented Programming (ECOOP), London, UK, July 15, 2019,
ACM DL.  
[![doi][cop19_doi]][cop19_paper] [![Preprint][preprint]][cop19_pdf]

- David Rauch, Patrick Rein, Stefan Ramson, Jens Lincke, and Robert Hirschfeld.
*Babylonian-style Programming: Design and Implementation of an Integration of
Live Examples Into General-purpose Source Code*. In [Journal on The Art,
Science, and Engineering of Programming, vol. 3, no. 3][prog19], art. 9, 39
pages, 2019.  
[![doi][prog19_doi]][prog19_paper] [![Preprint][preprint]][prog19_pdf]

- Fabio Niephaus, Patrick Rein, Jakob Edding, Jonas Hering, Bastian König, Kolya
Opahle, Nico Scordialo, and Robert Hirschfeld. *Example-Based Live Programming
for Everyone: Building Language-agnostic Tools for Live Programming With LSP and
GraalVM*. In Proceedings of the [ACM Symposium for New Ideas, New Paradigms, and
Reflections on Everything to do with Programming and Software (Onward!)
2020][onward20], co-located with the Conference on Object-oriented Programming,
Systems, Languages, and Applications (OOPSLA), pages 108-124, Chicago, United
States, November 17-18, 2020, ACM DL.  
[![doi][onward20_doi]][onward20_paper] [![Preprint][preprint]][onward20_pdf]


[preprint]: https://img.shields.io/badge/preprint-download-blue.svg
[babylonian_js]: https://lively-kernel.org/lively4/lively4-core/start.html?load=https://lively-kernel.org/lively4/lively4-core/src/babylonian-programming-editor/demos/index.md
[babylonian_vsc]: https://github.com/hpi-swa/polyglot-live-programming
[prog19_doi]: https://img.shields.io/badge/doi-10.22152/programming--journal.org/2019/3/9-blue.svg
[prog19_paper]: https://doi.org/10.22152/programming-journal.org/2019/3/9
[prog19_pdf]: https://arxiv.org/pdf/1902.00549v1
[cop19_doi]: https://img.shields.io/badge/doi-10.1145/3340671.3343358-blue.svg
[cop19_paper]: https://doi.org/10.1145/3340671.3343358
[cop19_pdf]: http://hirschfeld.org/writings/media/ReinLinckeRamsonMattisNiephausHirschfeld_2019_ImplementingBabylonianSbyPuttingExamplesIntoContextsTracingInstrumentationForExampleBasedLiveProgrammingAsAUseCaseForContextOrientedProgramming_AcmDL.pdf
[onward20_doi]: https://img.shields.io/badge/doi-10.1145/3426428.3426919-blue.svg
[onward20_paper]: https://doi.org/10.1145/3426428.3426919
[onward20_pdf]: http://fniephaus.com/2020/onward20-live-programming.pdf
[onward20]: https://2020.splashcon.org/details/splash-2020-Onward-papers/7/Example-Based-Live-Programming-for-Everyone-Building-Language-agnostic-Tools-for-Liv
[squeakorg]: http://www.squeak.org
[metacello]: https://github.com/dalehenrich/metacello-work
[babylonian_screenshot]: https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/blob/media/screenshot-for-readme.png?raw=true
[cop19]: https://2019.ecoop.org/home/COP-2019
[prog19]: https://programming-journal.org/2019/3/issue3/
