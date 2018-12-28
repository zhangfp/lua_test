#!/bin/env lua

--first search LUA_PATH=""
print("search path:".. package.path)

require "module"

module.func1()
module.func3()
