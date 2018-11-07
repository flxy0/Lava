module keyboard;import std.stdio;import std.conv;import derelict.sdl2.sdl;private bool[string] keysDown;private bool[string] keysPressed;void passPressedKey(SDL_Keysym inputKey){	string keyname = to!string(SDL_GetKeyName(inputKey.sym));	keysDown[keyname] = true;	keysPressed[keyname] = true;}void passLiftedKey(SDL_Keysym inputKey){	keysDown[to!string(SDL_GetKeyName(inputKey.sym))] = false;}bool isDown(string keyName){	if(keyName in keysDown && keysDown[keyName]) {		return true;	}else{		return false;	}}bool isPressed(string keyName){	if(keyName in keysPressed && keysPressed[keyName]) {		return true;	}else{		return false;	}}void clearPressedKeys(){	keysPressed.clear();}