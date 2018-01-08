#! /usr/bin/env ruby
# config: utf-8

require 'pp'

FPS = 30.0

def mainloop
  loop do
    update
	sleep 1.0/FPS
  end
end

def clear
# ANSI エスケープコードによるコンソール制御文字列
# https://www.mm2d.net/main/prog/c/console-02.html
# \e エスケープ [H カーソルを現在の位置に関係なく上端から１左端から１の場所に移動させる
# \e エスケープ [2J 画面全体を消去
print "\e[H\e[2J"
# \033 エスケープ(8進) [2J 画面全体を消去
#print "\033[2J"
end

def update
clear
#field = Field.instance
#puts field.to_s
end

mainloop
