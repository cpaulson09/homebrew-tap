class GitHerd < Formula
  desc "Live terminal dashboard of local git branches and worktrees, with safe cleanup"
  homepage "https://github.com/cpaulson09/git-herd"
  url "https://github.com/cpaulson09/git-herd/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "a1ddc4954232a69b6f92dc42d7ec672b4c52ab415b96b554c0554a40313ea692"
  license "MIT"

  depends_on "fzf"
  depends_on "gh"
  depends_on :macos

  def install
    bin.install "git-herd"
  end

  test do
    assert_match "--porcelain", shell_output("#{bin}/git-herd -h")
  end
end
