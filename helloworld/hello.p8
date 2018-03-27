pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
x = 64
y = 64
vx = rnd (3)
vy = 2
ay = .5

moonx = 0
moony = 0
moona = 0

function _init()
end

function _update()
moona += .03

moonx = sin(moona)*20
moony = cos(moona)*20

if (btn(⬅️)) x-=1
if(btn(➡️)) x+=1
vy += ay
x += vx
y += vy
if(y > 128) then
 vy =-vy
 y = 128
end
if(y < 0) then
 vy =-vy
 y = 0
end
if(x > 128) then
 vx =-vx
 x = 128
end
if(x < 0) then
 vx =-vx
 x = 0
end
end
function _draw()
cls()
print(vy,0,7)
circ(x,y,3,7)
pset(x+moonx,y+moony,8)
end
