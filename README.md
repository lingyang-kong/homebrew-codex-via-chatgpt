# homebrew-codex

Use the Codex CLI bundled with ChatGPT. This cask depends on `chatgpt`
without pinning its version.

```sh
brew uninstall codex # if the official Codex formula or cask is installed
brew tap lingyang-kong/homebrew-codex-via-chatgpt
brew install --cask lingyang-kong/homebrew-codex-via-chatgpt/codex
```

Homebrew installs ChatGPT if needed and creates this symlink:

```text
$HOMEBREW_PREFIX/bin/codex -> /Applications/ChatGPT.app/Contents/Resources/codex-cli/bin/codex
```

ChatGPT must be installed in `/Applications` and include the bundled CLI.
ChatGPT updates also update the CLI. The source is `file:///dev/null`, staged
as an uncompressed empty file to satisfy Homebrew's source requirement.
No server or network download is needed for this cask's source.

`brew remove chatgpt` refuses removal while this cask is installed. Remove Codex
first, or explicitly remove both:

```sh
brew remove codex chatgpt
```

`brew remove codex` removes the symlink and leaves ChatGPT installed.
Use the fully qualified cask name when installing to select this tap over the
official Codex cask.
