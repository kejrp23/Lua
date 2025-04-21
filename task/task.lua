

person = {
	name = {'first','last'},
	height = 00 ,
	address = { 
		'street',
		'city',
		'state',
		'zipcode'
		}
	}

people = {}


function create_person(firstname, lastname, street, city, state,zipcode)
	table.insert(people, {
			name = {first = firstname, last = lastname}
			height = 00,
			address = {
				street = street,
				city = city,
				state = state,
				zipcode = zipcode
				}
			}
end 


function print_people(tbl)
	for name, in pairs(tbl)



create_person('Jason','Pittman','Main street', 'la la', 'VA', '123456') 
		





