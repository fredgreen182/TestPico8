pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
game={}

function setstate_up()
 game.upd = up_update
 game.drw = up_draw
end

function setstate_down()
 game.upd = up_update
 game.drw = up_draw
end

function up_update()

end

function up_draw()
 print("works")
end


function _init()
 setstate_up()
end

function _update()
 game.upd()
end

function _draw()
 game.drw()
end
