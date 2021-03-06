"Load and run tests to be performed by TravisCI"
| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"load the STON tests"
Metacello new
  baseline: 'Ston';
  repository: 'filetree://', gitPath, '/ston/repository';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfSton' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

