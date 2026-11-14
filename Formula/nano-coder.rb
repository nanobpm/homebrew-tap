# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "6MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.67.0/nano-coder-0.67.0-aarch64-apple-darwin.tar.gz"
      sha256 "bba7df0d4db1360aaf4d23d4bbd8c917d49b71a8319e2bb704e0f2a95ca2de3c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.67.0/nano-coder-0.67.0-x86_64-apple-darwin.tar.gz"
      sha256 "d4f058fde937a4176f75c48e05d1fc216492225a66c9d3c26bfa36d285665f5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.67.0/nano-coder-0.67.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59ee78be83b46e32c272c55a43bbbf114fcc886bd948160a473bc5bd14a8780f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v0.67.0/nano-coder-0.67.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ccd602daa66b28d3b3703e24e1dbdc0cdbe81bba7544a5baa790a2227acf268"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
