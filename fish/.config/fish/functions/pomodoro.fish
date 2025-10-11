#!/usr/bin/env fish

# Simple Pomodoro Timer in Fish
# Usage: pomodoro [work_minutes] [break_minutes]
# Defaults: 25 min work, 5 min break

function notify
    set title $argv[1]
    set message $argv[2]
    terminal-notifier -title "$title" -message "$message" -appIcon "🍅" -sound "Submarine"
end

function pomodoro
    set work (math "$argv[1]" 2>/dev/null; or echo 25)
    set break (math "$argv[2]" 2>/dev/null; or echo 5)

    echo "🍅 Starting Pomodoro: $work minutes of focus"
    notify "Pomodoro" "Focus for $work minutes"
    sleep (math "$work * 60")

    echo "✅ Work session complete! Take a $break minute break."
    notify "Pomodoro ✅" "Work done! Take a $short_break min break"
    sleep (math "$break * 60")

    echo "🔔 Break over! Time to start again."
    notify "Pomodoro ✅" "Break over, start again!"
end
