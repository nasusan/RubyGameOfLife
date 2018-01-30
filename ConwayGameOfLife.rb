#! /usr/bin/env ruby
# frozen_string_literal: true

# conwayのライフゲームをrubyで実装する

require 'pp'

=begin
FPS = 30.0

def mainloop
  loop do
    update
    sleep 1.0 / FPS
  end
end

def clear
  # ANSI エスケープコードによるコンソール制御文字列
  # https://www.mm2d.net/main/prog/c/console-02.html
  # \e エスケープ [H カーソルを現在の位置に関係なく上端から１左端から１の場所に移動させる
  # \e エスケープ [2J 画面全体を消去
  print "\e[H\e[2J"
  # \033 エスケープ(8進) [2J 画面全体を消去
  # print "\033[2J"
end

def update
  field = GameOfLifeField.instance
  clear
  field.draw
end

#mainloop

=end

class GameOfLifeField

  def initialize( initial_field )
    @field = initial_field
  end

  def draw
    @field
  end

end
