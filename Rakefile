require 'rake/testtask'

task :default => [:test] #acción por defecto

desc "ejecuta todos los tests de tc_circunf"
Rake::TestTask.new do |i|
    i.libs << "test"
    i.test_files = FileList['test/tc_*.rb']
    i.verbose = true
end