task default: :doc
desc 'Slurp the joy.txt into the README'
task :doc do
  sh "cat preamble doc/joy.txt | sed 's/  *.*\\*$//' > README"
  sh 'git diff README'
end
