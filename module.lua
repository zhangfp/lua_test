--module.lua

module = {}

module.constant = 5

function module.func1()
	io.write("this is public function.\n")
end

local function func2()
	print("this is a private function.\n")
end

function module.func3()
	func2()
end

return module
