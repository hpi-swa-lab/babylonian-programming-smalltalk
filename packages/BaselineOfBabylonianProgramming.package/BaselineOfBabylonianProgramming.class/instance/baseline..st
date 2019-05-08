baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: 
					[ spec repository: 'github://hpi-swa/Ohm-S:master/packages' ];
				package: 'BabylonianProgramming-Core' with: [spec requires: #('BabylonianProgramming-Compiler')];
				package: 'BabylonianProgramming-Compiler' with: [spec requires: #('Ohm')];
				package: 'BabylonianProgramming-Tests' with: [spec requires: #('BabylonianProgramming-Core')];
				yourself.
			spec
				group: 'default' with: #('BabylonianProgramming-Core');
				group: 'tests' with: #('BabylonianProgramming-Tests')];
		yourself