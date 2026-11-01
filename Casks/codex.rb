cask "codex" do
  version :latest
  sha256 :no_check

  url "file:///dev/null"
  name "Codex"
  desc "Symlink to Codex CLI bundled with ChatGPT"
  homepage "https://github.com/lingyang-kong/homebrew-codex"

  depends_on cask: "chatgpt"

  binary "/Applications/ChatGPT.app/Contents/Resources/codex-cli/bin/codex"
end
