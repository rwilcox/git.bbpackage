tell application "BBEdit"
	activate
	set theMatch to find "<<<<" searching in text 1 of text document 1 options {search mode:grep, starting at top:false, wrap around:true, backwards:false, case sensitive:false, match words:false, extend selection:false} with selecting match
	
	if found of theMatch then
		
	else
		display dialog "no more conflicts!"
	end if
end tell
