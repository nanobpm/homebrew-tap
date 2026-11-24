# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.34.0/nano-coder-1.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0184df1c1c943239bf56124db34c2cc79fdd346df02e911e168007eea93619a"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.34.0/nano-coder-1.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "3615e7403e8fb355aa0bcc0f1f120e74d7215c2631693bac478fa90c19c9860f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.34.0/nano-coder-1.34.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ff4d806947b3cb2f59c6f6ab19756bfe2d230e36e6f97e2b820e5f2d1e153d4"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.34.0/nano-coder-1.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7726be5196e6e0e1f9745b24aba712edf894b4c24bf1252c7780f47a4a56a8b"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
