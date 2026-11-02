# frozen_string_literal: true

cask "codex" do
  version :latest
  sha256 :no_check

  url "file:///dev/null"
  name "Codex"
  desc "Symlink to Codex CLI bundled with ChatGPT"
  homepage "https://github.com/lingyang-kong/homebrew-codex"

  depends_on cask: "chatgpt"
  depends_on :macos

  binary "/Applications/ChatGPT.app/Contents/Resources/codex-cli/bin/codex"
  completions = cask.tap.path / "completions"
  %w[bash zsh fish].each do |shell|
    public_send "#{shell}_completion", completions / "codex.#{shell}"
  end
end
