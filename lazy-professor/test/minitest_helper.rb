require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/unit'

reporter_options = { color: true }
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(reporter_options)]
