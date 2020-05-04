on adding folder items to thisFolder after receiving newFiles
	delay 5
	
	repeat with newFile in newFiles
		tell application "Evernote" to create note from file newFile
		tell application "Finder" to delete (newFile)
	end repeat
	
end adding folder items to