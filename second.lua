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
