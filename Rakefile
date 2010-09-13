require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'rake/rdoctask'
require 'fileutils'
include FileUtils

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "jpmobile-terminfo"
    gem.summary = "Carrier terminal information List for jpmobile"
    gem.description = "Carrier terminal information List for jpmobile"
    gem.email = "rust.stnard@gmail.com"
    gem.homepage = "http://github.com/jpmobile/jpmobile-terminfo"
    gem.authors = ["Shin-ichiro OGAWA"]

    gem.add_development_dependency('jeweler', '>=1.4.0')
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
Jeweler::GemcutterTasks.new
