function save_table(filename, tbl)
	local file = io.open(filename, "w")
	file:write("return {\n")
	for k, v in pairs(tbl) do
		file:write(" " .. k .. " = " .. string.format("%q", v) .. ",\n")
	end
	file:write("}\n")
	file:close()
end

function load_table(filename)
	return dofile(filename)
end

local config = {
	theme = "dark",
	user = "Jason",
}

save_table("config.lua", config)

local loaded = load_table("config.lua")
print(loaded.theme)
