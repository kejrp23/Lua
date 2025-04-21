task.lua — Lua Task Switcher

A simple terminal-based task manager written in pure Lua. It allows you to add tasks, list them, and mark them complete — all within a clear, loop-driven CLI interface.

Features
	•	Add tasks with descriptions
	•	List tasks with [ ] or [x] completion status
	•	Mark tasks as complete
	•	Clears the screen between actions for clean UX (cross-platform)

Why Lua?

Lua is lightweight, fast, and flexible. This utility demonstrates how much can be done with just native tables and control flow — no external libraries needed.

Usage Menu
	1.	Add Task
	2.	List Tasks
	3.	Mark Task Complete
	4.	Exit

Example Output

Task Switcher
	1.	Add Task
	2.	List Tasks
	3.	Mark Task Complete
	4.	Exit
Choose an option: 2
	5.	Grocery Store
	6.	Change Oil

Cross-Platform Screen Clearing

The clear_screen() function uses:

package.config:sub(1,1)

to detect the OS and runs cls on Windows or clear on Unix systems using os.execute().

Future Enhancements
	•	Save and reload tasks from file
	•	Add due dates, tags, or priorities
	•	Improve visuals with ANSI color codes
	•	Error checking and task editing
