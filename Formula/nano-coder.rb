# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.13.0/nano-coder-1.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "98a1f219b4094435e817def3884cc393bf35453c2c7e0a7e465a00a4ee80ef3e"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.13.0/nano-coder-1.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d0e7c5728a3a878f85c7a84981ea2166a77196cc0fbc7f9fbedecc519b15443"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.13.0/nano-coder-1.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e0e5637cd3548a4c1f33154742c1717bb2270d2063d3711f59659ad3c702834"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.13.0/nano-coder-1.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3ad790f7d9981b544b68138fcad1ab724a79bbb95752f079dc0e2f1a16e6602"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
