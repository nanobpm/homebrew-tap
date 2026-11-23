# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.24.0/nano-coder-1.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "7bd89fbd154a3fe150f8cccef6c44b2b1adacdceb18b20b968c936292f8c7641"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.24.0/nano-coder-1.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "c9be2f8e673f68750de70dea58ed9bb71b23e456a6bebee5cee4942e6b280709"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.24.0/nano-coder-1.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e398c18b6474fc1fb308b0825365297132de05c675601d31f7ce39d4ce05f0e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.24.0/nano-coder-1.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2e43c830b0dd2dc8d17865e08e0f7340bd350a9c712010e4b037fa809695a30"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
