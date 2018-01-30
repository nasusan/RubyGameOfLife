#! /usr/bin/env ruby
# frozen_string_literal: true

# conwayのライフゲームをrubyで実装する

require 'pp'

class GameOfLifeField
  def initialize(initial_field)
    @field = initial_field
  end

  def draw
    @field
  end
end
