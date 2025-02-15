baseline
baseline: spec
	
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: 
					[ spec repository: 'github://hpi-swa/Ohm-S:master/packages' ];
				baseline: 'PEG' with:
					[ spec repository: 'github://codeZeilen/peg_parser/packages' ];
				project: 'Refactoring-Core' with:
					[ spec 
						className: 'ConfigurationOfRefactoringBrowser'; 
						repository: 'http://www.squeaksource.com/MetacelloRepository'; 
						loads: #('Core');
						version: '3.0'];
				package: 'IconsBase' with: [
					spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
				package: 'ContextS2-Core' with:
 					[ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/ContextSTrunk' ];
				package: 'Babylonian-Core' with: [spec requires: #('Babylonian-Compiler' 'ContextS2-Core' 'Refactoring-Core')];
				package: 'Babylonian-ProbeLog' with: [spec requires: #('Babylonian-Core' 'Babylonian-UI')];
				package: 'Babylonian-ExampleMining' with: [spec requires: #('Babylonian-Core' 'Babylonian-UI')];
				package: 'Babylonian-Compiler' with: [
					spec 
						requires: #('Ohm' 'PEG');
						postLoadDoIt: #postLoadCompiler];
				package: 'Babylonian-Tests' with: [
					spec 
						requires: #(default);
						postLoadDoIt: #postLoadTests];
				package: 'Babylonian-UI' with: [
					spec 
						requires: #('Babylonian-Core' 'IconsBase');
						postLoadDoIt: #postLoadUI];
				package: 'Babylonian-Demo' with: [];
				yourself.
			spec
				group: 'default' with: #('Babylonian-Core' 'Babylonian-UI' 'Babylonian-ProbeLog' 'Babylonian-ExampleMining');
				group: 'tests' with: #('Babylonian-Tests');
				group: 'full' with: #(tests 'Babylonian-Demo')];
				
		yourself