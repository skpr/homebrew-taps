# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.16.0-alpha2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.16.0-alpha2/skpr_0.16.0-alpha2_macOS_amd64.tar.gz"
      sha256 "f166270a61123e0824feec86373aa6d8c7e1d30b5f0f648ad01565dcdea468ed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/skpr/cli/releases/download/v0.16.0-alpha2/skpr_0.16.0-alpha2_macOS_arm64.tar.gz"
      sha256 "6dc3165d84098a677de4efbbd3776c40c2174344cd8cad955b3fd6f1ba8fa3c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.16.0-alpha2/skpr_0.16.0-alpha2_linux_amd64.tar.gz"
      sha256 "e507160275026fb7c980f4b62484a5682141fa7ae7ac5389d95164ffbd7de544"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/skpr/cli/releases/download/v0.16.0-alpha2/skpr_0.16.0-alpha2_linux_arm64.tar.gz"
      sha256 "85041f967d6189cb1fd3b50b7e42606e36dfea733c24fd1a907d0e3d03a10ec3"
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
