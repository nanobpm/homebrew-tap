# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.11.0/nano-coder-1.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "d469219f20f8f3998d717d4922044d62ba5213b69b0447f55a5c5a3a4dc8755f"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.11.0/nano-coder-1.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "939077cf315076515cfa4981915b1933066d21a257d116ca3700ff582a39c897"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.11.0/nano-coder-1.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32cee6aa76dacbe794bdb73005c15c780832999ad43b60e4ca7e2f6489140535"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.11.0/nano-coder-1.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "335ad8f88b37ef660cc638c6779c80f53d27738b181f6d5c9158570ecd612a0a"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
