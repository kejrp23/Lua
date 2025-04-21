# task.lua — Terminal Task Switcher

This is a standalone terminal-based task manager written in pure Lua. It allows you to add tasks, list them in a clean formatted display, mark them as complete, and clear the screen for a better user experience.

## Features

- Add tasks with short descriptions  
- View a full task list with status labels  
- Mark tasks as complete  
- Clean and simple CLI interface  
- Cross-platform screen clearing (Windows/macOS/Linux)

## Example Usage

```
== Task Switcher ==
1. Add Task
2. List Tasks
3. Mark Task Complete
4. Exit
Choose an option: 2

== Task List ==
1. Buy groceries  
   Status: ⏳ Pending

2. Change oil  
   Status: ✔ Done
```

## Technical Highlights

- Written in pure Lua, no dependencies  
- Uses native `io.read()` and `os.execute()` for terminal interaction  
- Uses `package.config` to detect platform and execute appropriate clear command  
- Tracks task list in a simple Lua table (`{ desc = "", done = false }`)

## Planned Improvements

- File-based persistence (save and load tasks)  
- Add task creation timestamps  
- Add task priority and category tags  
- Command-line flags for one-shot mode (e.g. `lua task.lua --list`)  
- ANSI color codes for status and menu

## Author

**Jason R. Pittman**  
