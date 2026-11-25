# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.3/nano-coder-1.35.3-aarch64-apple-darwin.tar.gz"
      sha256 "535a0275cb72d465d6fbb80abfb18909d47818cb790d0c86942216c3fb1eff41"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.3/nano-coder-1.35.3-x86_64-apple-darwin.tar.gz"
      sha256 "a4aac6d73001267754eaa8e5bba935411a73e3a4acfe358bf9d787724d56dd9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.3/nano-coder-1.35.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "668286741251a38d30e72ca27025e535ec36d05482858cc6f53b55ae6606d7c2"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.35.3/nano-coder-1.35.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db4bc3c41d97c2eb36d9e73f33e627910cad356ec773762afe695a33336bc76a"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
