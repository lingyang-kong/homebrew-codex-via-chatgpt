_codex_lazy() {
	local shell="$1" completions
	if ! completions="$(command codex completion "${shell}")"; then
		return 1
	fi
	eval "${completions}"
	case "${shell}" in
	zsh) "${_comps[codex]}" codex ;;
	bash) return 124 ;;
	*) return 1 ;;
	esac
}
