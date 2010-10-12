require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'spec/rake/spectask'



desc 'Default: run specs.'
task :default => :spec

desc 'Test lssm .'
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc 'Testing Web Server'
task :web do 
  sh "shotgun -o 0.0.0.0 app.rb"
end

desc 'Test lssm.'
task :test => :spec

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "lssm"
    gemspec.summary = "LDAP Self Service Management"
    gemspec.description = "LDAP Self Service Management."
    gemspec.email = "stahnma@websages.com"
    gemspec.homepage = "http://github.com/stahnma/lssm"
    gemspec.authors = ["Michael Stahnke"]
    #gemspec.add_dependency('httparty', '>= 0.4.4')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
end
