local M = {}

function M.save(filename, tbl)
	local file = io.open(filename, "w")
	file:write("return {\n")
	for k, v in pairs(tbl) do
		file:write(" " .. k .. " = " .. string.format("%q", v) .. ",\n")
	end
	file:write("}\n")
	file:close()
end

function M.load(filename)
	return dofile(filename)
end

return M
