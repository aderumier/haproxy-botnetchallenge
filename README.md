# haproxy-botnetchallenge

Implement a js challenge like haproxy enterprise antibonet.

It's using a totp token.
(currently the values are hardcoded in lua files, i need to export them to external variables)

The js challenge itself is pretty basic, I'm doing a simply ror13 to avoid simply scrapping of html response.
(you can also obsfucate the js if you want)

Ideads are welcome, if somebody have idea to implement a nice dynamic challenge js, like haproxy enterprise antibot !



require lua package:

https://github.com/tilkinsc/LuaOTP/
https://github.com/aiq/basexx/blob/master/lib/basexx.lua
https://github.com/kikito/sha1.lua
https://github.com/kennyledet/Algorithm-Implementations/blob/master/ROT13_Cipher/Lua/Yonaba/rot13.lua
