# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skpr < Formula
  desc "CLI for the Skpr Hosting Platform"
  homepage "https://www.skpr.io"
  version "0.32.4"

  depends_on "docker" => :optional
  depends_on "rsync" => :optional

  on_macos do
    on_intel do
      url "https://github.com/skpr/cli/releases/download/v0.32.4/skpr_0.32.4_macOS_amd64.tar.gz"
      sha256 "433b4ac6897af33410e3ec2774aabbfc41a4f32913121329afc5ab8f034c330d"

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
    on_arm do
      url "https://github.com/skpr/cli/releases/download/v0.32.4/skpr_0.32.4_macOS_arm64.tar.gz"
      sha256 "80d4971e4316cde8ac015ddbe88803152bf4df416429c18fafabf54774216b6c"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/skpr/cli/releases/download/v0.32.4/skpr_0.32.4_linux_amd64.tar.gz"
        sha256 "072fab68465aef440f7b2cd6cdef8ee40933a350bb4cf4e08c3b7d096d59b09e"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/skpr/cli/releases/download/v0.32.4/skpr_0.32.4_linux_arm64.tar.gz"
        sha256 "2129ebb09a403fda496f21faf135ba3e9fe972087612a6866e1cd39d7f9ad832"

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
end
