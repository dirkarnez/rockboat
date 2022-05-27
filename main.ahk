#Persistent
return

OnClipboardChange:
FoundPos := RegexMatch(clipboard, "O).*github.com/dirkarnez/(.*)", m)
if (FoundPos > 0) {
	clipboard := "https://dirkarnez:@github.com/dirkarnez/"  m.Value(1) ".git"
	ToolTip done
	Sleep 3000
	ToolTip  ; Turn off the tip.
	return
}
