require 'simplecov'
require 'coveralls'

SimpleCov.add_filter "/spec/"
SimpleCov.add_filter "engine.rb"

if ENV["COVERAGE"]
  SimpleCov.start
elsif ENV["COVERALLS"]
  SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  Coveralls.wear!
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kolor-picker'
require 'action_view'

ActionView::Base.class_eval do
  include KolorPicker::Helper
end
