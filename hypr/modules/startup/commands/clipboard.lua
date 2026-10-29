local Quickshell = {
	"cliphist wipe",
	"wl-paste --type text --watch cliphist store",
	"wl-paste --type image --watch cliphist store",
	"wl-copy --watch cliphist store",
	"wl-clip-persist --clipboard regular"
}

return Quickshell
