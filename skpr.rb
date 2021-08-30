# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.12.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.12.1/skpr_0.12.1_macOS_amd64.tar.gz"
      sha256 "f187021a7c41712701f5da20a6b72346876c6374a0ccb5206de344be94caf835"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.12.1/skpr_0.12.1_linux_amd64.tar.gz"
      sha256 "a2cd26403bbadbacfb8f126b54c6fcd8f0ef7b1957fb439356a29037c60a6b0b"
    end
  end

  depends_on "rsync" => :optional
  depends_on "docker" => :optional

  def install
    bin.install "skpr"
    bin.install "skpr-rsh"

    man1.install "share/man/man1/skpr.1"

    # Install bash completion
    output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-bash")
    (bash_completion/"skpr").write output

    # Install zsh completion
    output = Utils.safe_popen_read("#{bin}/skpr", "--completion-script-zsh")
    (zsh_completion/"_skpr").write output
  end
end
