#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
require_relative 'ConwayGameOfLife'

class TestGameOfLife < Test::Unit::TestCase
  # test '実行' do
  def test_singleton_instance
    field = GameOfLifeField.instance
    assert_not_nil field
  end

  def test_initialize

    seed = 
	".....
	.....
	.....
	.....
	....."

    GameOfLife.initialize( seed )
    assert_equal 1, 1
  end
end
