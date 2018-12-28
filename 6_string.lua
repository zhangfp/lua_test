#!/bin/env lua

string1 = 'lua'
print("\"字符串1是\""..string1)

string2="HELLO"
print(string2)
string3=[[string3]]
print(string3)

print(string.upper(string1))
print(string.lower(string2))

string = "Lua Tutorial"
print(string.find(string,"Tutorial"))

print(string.reverse(string))

print(string.format("%s", string))