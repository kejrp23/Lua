users = {
	user1 = { name = "Jason", role = "Admin" },
	user2 = { name = "Test", role = "test" },
}

function check_access(u)
	if u.role == "Admin" then
		print("Welcome, " .. u.name)
	else
		print("Access Denied")
	end
end

for names, roles in pairs(users) do
	check_access(roles)
end


number = { 1,2,3,4,5,6,7,8,9,10)

for numbers in number do
	print(numbers)
end
