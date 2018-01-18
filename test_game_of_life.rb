#! /usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'

class TestGameOfLife < Test::Unit::TestCase
  # test '実行' do
  def test_singleton_instance
    field = Field.instance
    assert_not_nil field
  end

  def test_initialize
    assert_equal 1, 1
  end
end
