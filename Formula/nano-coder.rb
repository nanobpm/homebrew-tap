# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.0/nano-coder-1.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "e055cf037e79d099bf02998189a4467f7f14e1b369eacf99abc0e4bbac86eabd"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.0/nano-coder-1.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "664680a0e084f4ebcb9468b37826b32a2fe55271b13bd6584cb74ce0e9c0f866"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.0/nano-coder-1.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee8c24cc6b4d653fd4e87150ad3a6fe30938d634b598dbc5f247aa1a5477e84c"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.0/nano-coder-1.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e6c58aefa22d41a3291fcd328a99610b6482db9ae763f6e1a7d39ad5ad8f88d"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
