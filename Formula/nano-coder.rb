# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.1/nano-coder-1.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "a1036f8cb2e5e33f46ca53aa3abf6d6181a8ff2963dc24ad06dd396dfd2eee41"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.1/nano-coder-1.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "da9975e6d683f494044cc71769a3fd385060de386b772a02007af1935d56b591"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.1/nano-coder-1.22.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cf31139f9e83950574c82aa50f5fada696000d97c5b070dc73709a6b57e3110"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.1/nano-coder-1.22.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "798c6977381052a7b283edffdb0e3c3d89556d29912dcfd3930acfa04fe051a3"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
