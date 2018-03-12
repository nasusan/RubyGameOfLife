#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require_relative 'ConwayGameOfLife'

class TestGameOfLife < Test::Unit::TestCase

  def test_initialize
    life_field = GameOfLifeField.new( 5,5 )
    p life_field.field
    assert_equal 1, 1
  end
end
