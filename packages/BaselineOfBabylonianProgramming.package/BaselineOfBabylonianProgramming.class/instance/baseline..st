baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: 
					[ spec repository: 'github://hpi-swa/Ohm-S:master/packages' ];
				package: 'IconsBase' with: [
					spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
				package: 'ContextS2-Core' with:
 					[ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/ContextSTrunk' ];
				package: 'BabylonianProgramming-Core' with: [spec requires: #('BabylonianProgramming-Compiler' 'ContextS2-Core')];
				package: 'BabylonianProgramming-Compiler' with: [spec requires: #('Ohm')];
				package: 'BabylonianProgramming-Tests' with: [spec requires: #('BabylonianProgramming-Core')];
				package: 'BabylonianProgramming-UI' with: [spec requires: #('BabylonianProgramming-Core' 'IconsBase')];
				yourself.
			spec
				group: 'default' with: #('BabylonianProgramming-Core' 'BabylonianProgramming-UI');
				group: 'tests' with: #('BabylonianProgramming-Tests')];
		yourself