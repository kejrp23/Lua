--Lua People Builder Prototype
--using a table to make an object and print it
--Created on: 4-20-2025

person = {
	name = { "first", "last" },
	height = 00,
	address = {
		"street",
		"city",
		"state",
		"zipcode",
	},
}

people = {}

function create_person(firstname, lastname, street, city, state, zipcode)
	table.insert(people, {
		name = { first = firstname, last = lastname },
		address = {
			street = street,
			city = city,
			state = state,
			zipcode = zipcode,
		},
	})
end

function print_people(tbl)
	for i, person in pairs(tbl) do
		print(" Person #" .. i)
		print(" Name: " .. person.name.first .. " " .. person.name.last)
		print(" Address: ")
		print(" " .. person.address.street)
		print(" " .. person.address.city .. ", " .. person.address.state .. ", " .. person.address.zipcode)
		print()
	end
end

create_person("Jason", "Pittman", "Main street", "la la", "VA", "123456")

print_people(people)
