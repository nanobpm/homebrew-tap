# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.1/nano-coder-1.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "004fa8c1047fc4b04a5db87419d894b86e9e8b5a8c34fc00cc5ebe49d5f47d82"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.1/nano-coder-1.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "b945483974aac319405a101d68b095c9fb25a284cc8d6a678e974b8be5f10684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.1/nano-coder-1.25.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e1f16c1bb0875c9b948fed42d866310dbca1eaa530d3fc7a67e7744f6e98397"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.25.1/nano-coder-1.25.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe7e60c6e530838279c01012cb1dc72530e2050e6689ad85086df7ee2d3e8fff"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
