#! /usr/bin/env ruby

require 'test/unit'

class TestGameOfLife < Test::Unit::TestCase
  #test '実行' do
  def TestSinglotonInstanse
    field = Field.instance
	assert_not_nil field
  end
  def TestInittialize
    assert_equal 1,1
  end
end

