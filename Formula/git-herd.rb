class GitHerd < Formula
  desc "Live terminal dashboard of local git branches and worktrees, with safe cleanup"
  homepage "https://github.com/cpaulson09/git-herd"
  url "https://github.com/cpaulson09/git-herd/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "496781ef0a55c1563932bd94af2c4a8944f49aed81773bd4e0ec7eb5dc76aa1c"
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
