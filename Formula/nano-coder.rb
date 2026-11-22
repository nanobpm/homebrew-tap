# Generated on each release by scripts/homebrew-formula.mjs in nanobpm/nano-coder. Don't edit.
class NanoCoder < Formula
  desc "4MB coding agent. Run a fleet on your laptop"
  homepage "https://github.com/nanobpm/nano-coder"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.2/nano-coder-1.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "5d4936e2c9cba2f514e945ed99377ab1488dd53c7fad01384b9ca0a9d185b886"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.2/nano-coder-1.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "a21c738a4dfe5c9fba2c17bb5fc7786891fad95b8f2756b9e4fe75440a920ca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.2/nano-coder-1.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea985e4a226feaec1a71a8cb40750afac17bbe59d64d99ad0f896e73f1298751"
    end
    on_intel do
      url "https://github.com/nanobpm/nano-coder/releases/download/v1.9.2/nano-coder-1.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ca197e73780067ae984e389be6956b6a5c7501c1126281282bc2e5b10c3a5bf"
    end
  end

  def install
    bin.install "nano-coder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nano-coder --version")
  end
end
