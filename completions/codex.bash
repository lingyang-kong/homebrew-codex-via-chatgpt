source "$(dirname "$(realpath "${BASH_SOURCE[0]}")")/common.sh"

_codex_lazy_bash() {
	_codex_lazy bash
}
complete -F _codex_lazy_bash codex
