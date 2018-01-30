#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require_relative 'ConwayGameOfLife'

class TestGameOfLife < Test::Unit::TestCase
  def test_initialize
    initial_field = "
      ...
      ...
      ...
      "
    actual = GameOfLifeField.new( initial_field ).draw
    expected = "
      ...
      ...
      ...
      "
    assert_equal actual,expected
  end
end
