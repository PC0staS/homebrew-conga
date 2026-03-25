

class Conga < Formula
  desc "Config generator CLI"
  homepage "https://github.com/pc0stas/conga"
  url "https://github.com/pc0stas/conga/archive/v1.4.0.tar.gz"
  sha256 "9b1b6e61ddba64d29b9adf56e27b16707382c9960953eadcee105fdc20012acb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"conga", "."
  end

  test do
    system "#{bin}/conga", "--version"
  end
end
