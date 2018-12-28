#!/bin/env lua

array = {}

for i = 1, 3 
do
	array[i] = i
end

for i = 1, 3 do
	print(array[i])
end

aa = {}
for i=1,3 do
	aa[i] = {}
	for j=1,3 do
		aa[i][j] = i*j
	end
end

for i=1,3 do
	for j=1,3 do
		print(aa[i][j])
	end
end
