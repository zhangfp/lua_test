#!/bin/env lua

--first lua test --
--[[
--datatype test:nil string number boolean table function thread userdata
--]]
print("hello world")
print "hello world"

print "---------datatype----------"
print(type(a))  -->nil
print(type(type(a)))  -->string
a = 10.2
print(type(a))  -->number
print(type("Hello world")) -->string
print(type(print)) -->function
print(type(type)) -->function
print(type(true)) -->boolean
print(type({})) -->table

--table
a = {}
fruit = {"apple", "pear", "orange", "grape"}

a["key1"] = "value"
a[10] = 20
for k, v in pairs(a) do
	print(k.." : "..v)
end

--thread
--userdata


