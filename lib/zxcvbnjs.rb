require 'pathname'
require 'zxcvbnjs/version'
require 'zxcvbnjs/tester'

module Zxcvbnjs
  extend self

  # Returns a Zxcvbnjs::Score for the given password
  #
  # Example:
  #
  #   Zxcvbnjs.test("password").score #=> 0
  def test(password, user_inputs = [])
    tester = Tester.new
    tester.test(password, user_inputs)
  end
end
