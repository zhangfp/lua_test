#!/bin/env lua

--test function --
function test()
	local a = 4
	local b = 7
	local c
	c = a + b
	print(c)
end

test()
print(type(test))

--no local will be global
local function max(num1, num2)
	if(num1 > num2) then 
		result = num1
	else
		result = num2
	end
	
	return result
end

print(max(10, 45))

myprint = function(param)
	print("this is mypirnt, " .. param)
end

print(type(myprint))

--function object as parameter
function add(a, b, printfunc)
	result  = a + b
	printfunc(result)
	return result
end

add(12, 34, myprint)


--return more than one value
function maximum(a)
	local index = 1
	local val = a[index]
	for k, v in pairs(a) do
		if (v > val) then val = v;index = k; end
	end
	
	return val,index
end

print(maximum({2, 5,3, 9}))

--variable parameters
function add2(...)
	local s = 0
	for i, v in ipairs{...} do -->big brace, as table
		s = s + v
	end
	
	return s
end

print(add2(2, 3,4,5))

function average(...)
	local s = 0
	local arg ={...}
	for i, v in pairs(arg) do
		s = s + v
	end
	
	--local average = s / #arg  --equals select("#",...)
	local average = s /select("#", ...)
	
	return average
end

print(average(2,3,4,5))

function foo(...)
	for i, v in pairs({...}) do
		print(v)
	end
	
	for i=1, select('#',...) do
		local arg = select(i,...)
		print(arg)
		--print(select(i,...))
	end
end

foo(1, 2, 3, 4)
