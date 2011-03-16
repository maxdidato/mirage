require 'rubygems'
require 'bundler/setup'
$0='Mirage Server'
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib")
require 'mirage'
include Mirage::Util

options = parse_options(ARGV)

DEFAULT_RESPONSES_DIR = "#{options[:defaults_directory]}"
Mirage.client = Mirage::Client.new
Ramaze::Log.loggers = [Logger.new('mirage.log')]
Ramaze::Log.level= Logger::WARN
Ramaze.start :port => options[:port]


