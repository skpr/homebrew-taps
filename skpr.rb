# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.11.0-alpha4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/skpr/cli/releases/download/v0.11.0-alpha4/skpr_0.11.0-alpha4_macOS_amd64.tar.gz"
    sha256 "6ec5fc8719c5edb8bb591f42d55da5e6f638f587603e2c9b6e54be2c36648ce5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.11.0-alpha4/skpr_0.11.0-alpha4_linux_amd64.tar.gz"
      sha256 "a3e019d43ebf7ba4444c5c26854e1a6e69815c7f0a4ee970ec451853d01fd1b3"
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
