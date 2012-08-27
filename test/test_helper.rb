ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'test/unit/ui/console/testrunner'

# mt = :progressurn stuff
begin; require 'turn/autorun'; rescue LoadError; end

class Test::Unit::UI::Console::TestRunner
  def guess_color_availability_ 
    true 
  end
end

Turn.config.ansi = true
Turn.config.format = :cue

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


class ActionController::TestCase
  include Devise::TestHelpers
end
