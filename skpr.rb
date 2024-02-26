# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.26.2"

  depends_on "docker" => :optional
  depends_on "rsync" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skpr/cli/releases/download/v0.26.2/skpr_0.26.2_macOS_arm64.tar.gz"
      sha256 "15835d39f62e5f2fc8f399de875c5fd0d36e1fb220c27fd317d9b7dc04d22a7b"

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
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.26.2/skpr_0.26.2_macOS_amd64.tar.gz"
      sha256 "238e8e58129fea162ffad228be0107cdb85f3e2910a82dbb5e7b36173254303c"

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
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/skpr/cli/releases/download/v0.26.2/skpr_0.26.2_linux_arm64.tar.gz"
      sha256 "20a99c67378349bd0f43580ede3a23de6a4c586d8d4c38da77b770778360eec2"

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
    if Hardware::CPU.intel?
      url "https://github.com/skpr/cli/releases/download/v0.26.2/skpr_0.26.2_linux_amd64.tar.gz"
      sha256 "519a3ae75a8ad4558f94b2d49078eff3d6abc7a382b5a26af3351058573764a0"

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
  end
end
