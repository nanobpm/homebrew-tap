# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.5/nano-coder-1.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "f2a099b69df787d85e522e7e6a61ca70fb35b378c1fd126e39fe7e187ac5c681"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.5/nano-coder-1.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "51d89802e2aa322cc681af65a33a656105f9f6ebffdac3569f32f95a61b360ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.5/nano-coder-1.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6dfe9f2899dabe11aaafb86e4271ba480eed881825ddb95952fad9a9e8d5ad6b"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.6.5/nano-coder-1.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7071bc10ec28946200ac753efc171afdd26cdadc7a4bc7b6833b540e9e1a59b"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
