to getGitRootFolder()
	set output to ""
	tell application "BBEdit"
		set asAlias to file of first document as alias
		display dialog asAlias
		tell application "Finder" to set parentFolder to container of asAlias as alias
		set posixPathToFolder to POSIX path of parentFolder
		
		set output to do shell script "cd `dirname '" & posixPathToFolder & "'`; cd $(git rev-parse --show-toplevel); pwd"
	end tell
	return output
end getGitRootFolder

on run
	set gitRootFolder to getGitRootFolder()
	tell application "BBEdit"
		set uws to Unix worksheet window
		tell uws
			select insertion point after last character
			set selection to "

# RUN THESE NEXT THREE LINES
"
			
			select insertion point after last character
			set selection to "export GIT_EDITOR=\"/usr/local/bin/bbedit -w\"
" & "cd '" & gitRootFolder & "'
 git commit -v"
			
		end tell
		activate Unix worksheet window
		
	end tell
end run