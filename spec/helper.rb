# -*- encoding: utf-8 -*-

# todo: replace GEM
require 'coco'

# Delete this line if the gem is a library
$GEM_PATH = File.expand_path(File.join(File.expand_path(File.dirname(__FILE__)), '..'))

require './lib/GEM'
include GEM

RSpec.configure do |config|
  config.order = "random"
end

def fixture_file filename
  file_path = File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
  File.read file_path
end

def fixture_file_path filename
  File.expand_path(File.dirname(__FILE__) + '/fixtures/' + filename)
end

