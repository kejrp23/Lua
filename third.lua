function new_file(name)
	local file = io.open(name, "w")
	file:write("firstline \n")
	file:write("secondline \n")
	file.close(file)
end

function read_file(name)
	local file = io.open(name, "r")
	for line in file:lines() do
		print("Read Line: ", line)
	end
end

function open_file(name)
	local file = io.open(name, "w")
end

new_file("test.txt")

read_file("test.txt")
