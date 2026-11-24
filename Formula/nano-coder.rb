# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.3/nano-coder-1.25.3-aarch64-apple-darwin.tar.gz"
      sha256 "1da556204f2b09eb8163e81c2784e7f9bacd6dcc15cbf023e84fa89e2b44c61e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.3/nano-coder-1.25.3-x86_64-apple-darwin.tar.gz"
      sha256 "35cd943b5069c67c1c9a2ae8a423b22015b7edf63ed59aef640e89a9670e6e9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.3/nano-coder-1.25.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1d704a0ef7e9afcd472d24c60c057d3b2c71d152900e56e859c3332905704e0"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.3/nano-coder-1.25.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "102909d7cb2e189e7860958e88c6c46cc4d76435b638798e9938e91472297f7e"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
