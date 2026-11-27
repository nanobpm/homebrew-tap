# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.37.0/nano-coder-1.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "1493b69dd41544e52b9b0cdf760f0d1d3c097d9c7d412fec6e864710a8db885f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.37.0/nano-coder-1.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "862412fa7b242d6c85bf580644824eee033efc126325c979d3c73b45ab02af95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.37.0/nano-coder-1.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a46e40a9b25d6419f4afe41def57525fbfec175c0ab9f743d947f6c9359fe861"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.37.0/nano-coder-1.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f00e4a2e242d7e79859f0bcae26e3ea949f4afb062e778c16d72f3ce83ff034"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
