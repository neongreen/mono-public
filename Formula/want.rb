class Want < Formula
  desc "Interactive fulfillment assistant for installing tools and releases."
  homepage "https://github.com/neongreen/mono-public"
  version "main.15"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono-public/releases/download/want--main.15/want-main.15-darwin-arm64.tar.gz"
      sha256 "6642b035114a068de88f0bf80677f90066ff238c097ab0b7a6f46a8ad4cc2d29"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono-public/releases/download/want--main.15/want-main.15-darwin-amd64.tar.gz"
      sha256 "cd22728042ab3115a1b497c004e676543601e37880a640123ab713003ab24d3c"
    end
  end
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neongreen/mono-public/releases/download/want--main.15/want-main.15-linux-arm64.tar.gz"
      sha256 "9eb72a1442a6e7b89a4b95c4fbd9813ea927113747338e34f68724c7115ba08d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neongreen/mono-public/releases/download/want--main.15/want-main.15-linux-amd64.tar.gz"
      sha256 "e49030ebc9a609704426173fa8964bcdf845eab50f4cb007de38edfa262594d7"
    end
  end
  def install
    bin.install "want"
  end

  test do
    system "#{bin}/want", "--help"
  end
end
