# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.4/nano-coder-1.22.4-aarch64-apple-darwin.tar.gz"
      sha256 "55b5a872a6a355ea46b1f75f7d56016c4bef71ee57005be666a91472a1186eef"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.4/nano-coder-1.22.4-x86_64-apple-darwin.tar.gz"
      sha256 "ab6ef4425820e40080b0ed0a2c1cb17ea85c0ea44ecde04701caf36a318781fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.4/nano-coder-1.22.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "072a779237035cf230ff249b44b367ad7cea91aeedacf148bf6f2084f003d545"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.22.4/nano-coder-1.22.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc6cc6ffe97e505b60d43bd2f24a24a7bd14171b7b430b50bb7b65807961ec60"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
