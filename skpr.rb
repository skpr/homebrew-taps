# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.11.0-alpha6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/skpr/cli/releases/download/v0.11.0-alpha6/skpr_0.11.0-alpha6_macOS_amd64.tar.gz"
    sha256 "ff89b6e0f45c0f2b24262863826a0ec6f5e4b6360ede037ba9510475eb8eb641"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.11.0-alpha6/skpr_0.11.0-alpha6_linux_amd64.tar.gz"
      sha256 "f8f25f810349964edbe6494b21ac9fac8c8e5a0091d21a9e1096a29c59537807"
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
