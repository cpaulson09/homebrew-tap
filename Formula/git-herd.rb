class GitHerd < Formula
  desc "Live terminal dashboard of local git branches and worktrees, with safe cleanup"
  homepage "https://github.com/cpaulson09/git-herd"
  url "https://github.com/cpaulson09/git-herd/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "bf91743de9a5b660e42ea773e891c355180b863bf6cdd14b3ef942a5e6eed9ee"
  license "MIT"

  depends_on "fzf"
  depends_on "gh"
  depends_on :macos

  def install
    bin.install "git-herd"
  end

  test do
    assert_match "git-herd", shell_output("#{bin}/git-herd -h")
  end
end
