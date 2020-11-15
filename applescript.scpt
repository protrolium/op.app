tell application "iTerm"
	activate
	
	set W to current window
	if W = missing value then set W to create window with default profile
	tell W's current session
		split vertically with default profile
	end tell
	set T to W's current tab
	write T's session 1 text "n -Fox -b d && c"
	write T's session 2 text "htop -t"
end tell
