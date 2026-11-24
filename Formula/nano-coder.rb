# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.6/nano-coder-1.33.6-aarch64-apple-darwin.tar.gz"
      sha256 "2a94cc56d9e70aeaf6865c55a1c020a4f39e1e85f5fd2fae97a9c2da8a5fc950"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.6/nano-coder-1.33.6-x86_64-apple-darwin.tar.gz"
      sha256 "724ae36867ada73fe67c9ced5b220c0d30dd5166429da1f15095cec0b98b8898"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.6/nano-coder-1.33.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c71d547661a8d352eb896044760d33dbc21f615074c1cdf52e13987e0728c4ab"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.33.6/nano-coder-1.33.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69044fc64cb6798754e4d7afed8e181dd44c0bd3423776927046b494b6b270ee"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
