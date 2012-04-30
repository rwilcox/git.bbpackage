tell application "BBEdit"
	--activate
	--open find window
	find "CONFLICT .+? in " searching in text 1 of shell document "Unix Worksheet.worksheet" options {search mode:grep, starting at top:false, wrap around:true, backwards:false, case sensitive:false, match words:false, extend selection:false} with selecting match
	
	set selection of window 1 to (grep substitution of "bbedit ")
	
end tell