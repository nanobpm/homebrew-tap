# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.0/nano-coder-1.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "487030b2742f29cc0bd4b2d70951673fa9466743001b9681ea0b4a8f6007366e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.0/nano-coder-1.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "1fbcab84f0597e53c7e359e31ecc479389d0c368687cda2cbc079a6f6674deca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.0/nano-coder-1.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e30e0d6f406ff63e35a67d437a1898d718c4d3058fa41c0f303e87dec244495e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.17.0/nano-coder-1.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7558ddc0b7ef0058f3bac4475a1205eb1b8af708ccdb6ffa060b29c138180cf"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
