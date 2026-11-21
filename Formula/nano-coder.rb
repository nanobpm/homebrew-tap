# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.5.0/nano-coder-1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3fba3592711a076f43f80f172e1d87add7ca0c1fd2e06e2d21e78c5aa405426"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.5.0/nano-coder-1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ba1b837887c8948ea4f0a742ac8a2957fadce350199840189446ed125c81880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.5.0/nano-coder-1.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b38141bc302d146ed5c2348439096e59a3c52229ccdbe5c3a62dc16f58ba8533"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.5.0/nano-coder-1.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72230bac02244ebcb7b197d0a2f9cf5a5eb5b2074288689480e3fee6a6ca5ff1"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
