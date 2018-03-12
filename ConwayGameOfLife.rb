#! /usr/bin/env ruby
# frozen_string_literal: true

# conwayのライフゲームをrubyで実装する

require 'pp'
require 'singleton'

FPS = 30.0

def mainloop
  field = GameOfLifeField.new( 5, 5 )
  loop do
    field.update
    sleep 1.0 / FPS
  end
end

class GameOfLifeField

  def initialize(x,y)
    @field = Array.new(x, Array.new(y, '.'))
  end

  def draw
    @field.each do |y|
      y.each do |x|
        print x
      end
      puts
    end
  end

  def clear
    # ANSI エスケープコードによるコンソール制御文字列
    # https://www.mm2d.net/main/prog/c/console-02.html
    # \e エスケープ [H カーソルを現在の位置に関係なく上端から１左端から１の場所に移動させる
    # \e エスケープ [2J 画面全体を消去
    print "\e[H\e[2J"
  end

  def update
    clear
    draw
  end

  attr_reader :field
end

#mainloop
