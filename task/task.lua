--Task switcher application
--Created on 4-20-2025

local tasks = {}

function clear_screen()
	local cmd = string.sub(package.config, 1, 1) == "\\" and "cls" or "clear"
	os.execute(cmd)
end

function add_task()
	io.write("Enter Task Description: ")
	local desc = io.read()
	table.insert(tasks, { desc = desc, done = false })
	clear_screen()
	print("New task Entered")
end

function list_tasks()
	clear_screen()
	if #tasks == 0 then
		print("No Tasks Yet.")
		return
	end
	for i, task in ipairs(tasks) do
		local status = task.done and "[x]" or "[ ]"
		print(i .. ". " .. status .. " " .. task.desc)
	end
end

function complete_task()
	io.write("Enter task number to mark complete: ")
	local index = tonumber(io.read())
	if tasks[index] then
		tasks[index].done = true
		clear_screen()
		print("Task updated") --added
	else
		clear_screen()
		print("Invalid task number.")
	end
end

function main_loop()
	while true do
		print("\nTask Switcher")
		print("1. Add Task")
		print("2. List Tasks")
		print("3. Mark Task Complete")
		print("4. Exit")
		io.write("Choose an option: ")
		local choice = io.read()
		if choice == "1" then
			add_task()
		elseif choice == "2" then
			list_tasks()
		elseif choice == "3" then
			complete_task()
		elseif choice == "4" then
			print("Exiting...")
			break
		else
			print("Invalid option")
		end
	end
end

main_loop()
