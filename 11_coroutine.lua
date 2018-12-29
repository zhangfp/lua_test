#!/bin/env lua


co = coroutine.create(
	function(i)
		print(i)
--		coroutine.yield(i)
	end
)

coroutine.resume(co, 1)

print(coroutine.status(co))

function foo(a)
	print("foo function output: ", a)
	return coroutine.yield(2*a)
end

test = function(a, b)
	print("first output: ", a, b)
	local r = foo(a+1)
	
	print("second output: ", r)
	local r, s = coroutine.yield(a+b, a-b)

	print("third output: ", r, s)
	return b, "end."
end

co = coroutine.create(test)

print("main", coroutine.resume(co, 1, 10))
print("main", coroutine.resume(co, "r"))
print("main", coroutine.resume(co, "x", "y"))
print("main", coroutine.resume(co))

--producer and consumer
function producer()
	local i = 0
	while true do
		i = i + 1
		send(i)
	end
end

function consumer(p)
	local i = 0
	while(i < 10) do
		local value = receive(p);
		print(value)
		i = i + 1
	end
end

function send(i)
	return coroutine.yield(i)
end

function receive(p)
	local status, value = coroutine.resume(p)
	return value
end

local p = coroutine.create(producer)
consumer(p)
		
