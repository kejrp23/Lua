README for task.lua

Lua Task Switcher

This is a simple terminal-based task manager written in pure Lua. It lets you add tasks, list them, and mark them complete — all from a clean loop-based CLI.

Features:
	•	Add tasks with descriptions
	•	List tasks with [ ] or [x] status
	•	Mark tasks complete
	•	Clears the screen between actions for readability (Windows/macOS/Linux)

Why Lua?
Lua is small, clean, and fast. You don’t need external libraries to make something like this work. It’s a great example of how Lua’s built-in tables and control flow can power lightweight utilities.

Usage:
	•		1.	Add Task
	•		2.	List Tasks
	•		3.	Mark Task Complete
	•		4.	Exit

Example Output:
	1.	Grocery Store
	2.	Change Oil

Cross-Platform Clear:
The clear_screen() function uses package.config to detect the OS and runs either ‘cls’ or ‘clear’. Works on Windows and Unix-based systems out of the box.

Ideas for Future:
	•	Save tasks to a file and reload them
	•	Add due dates or tags
	•	Sort by priority or completion
	•	Add colors with ANSI codes
