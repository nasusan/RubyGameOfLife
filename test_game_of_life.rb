#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require_relative 'ConwayGameOfLife'

class TestGameOfLife < Test::Unit::TestCase
  def test_init
    initial_field = "
      ...
      ...
      ...
      "
    assert_equal GameOfLifeField.new(initial_field).draw, initial_field
  end
end
