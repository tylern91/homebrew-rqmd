# Homebrew formula template for rqmd.
#
# This file lives in the rqmd source repo at packaging/homebrew/rqmd.rb.template.
# scripts/update-homebrew-formula.sh renders it (substituting the RQMD_*
# placeholders below) into packaging/homebrew/rqmd.rb, then pushes that
# rendered copy to the Homebrew tap (github.com/tylern91/homebrew-rqmd) on
# each release. Never edit packaging/homebrew/rqmd.rb directly — it's a
# generated file, not the template.
#
# Install:
#   brew tap tylern91/rqmd
#   brew install rqmd
class Rqmd < Formula
  desc "Hybrid local document search in a single static binary"
  homepage "https://github.com/tylern91/rqmd"
  license "MIT"

  on_macos do
    on_arm do
      # aarch64-apple-darwin (macOS, Apple Silicon)
      url "https://github.com/tylern91/rqmd/releases/download/v0.32.1/rqmd-v0.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c5195a41e189bd9b07072f321f73a22c994b96e52ce83615a0c468ff843732a"
      version "0.32.1"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/rqmd/releases/download/v0.32.1/rqmd-v0.32.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "385988b5ecb77d5a5bcb6381a8916521a19b557f91d1db52a62f3775dc114679"
      version "0.32.1"
    end
  end

  def install
    bin.install "rqmd"
    doc.install "LICENSE", "THIRD-PARTY-LICENSES.md"
  end

  test do
    system "#{bin}/rqmd", "--version"
  end
end
