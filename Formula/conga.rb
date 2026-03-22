

class Conga < Formula
  desc "Config generator CLI"
  homepage "https://github.com/pc0stas/conga"
  url "https://github.com/pc0stas/conga/archive/v1.2.1.tar.gz"
  sha256 "27416f395d5650a43a8819c44047f1b0cb2d24e20c101aba96805b799631b77b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-X main.Version=#{version}", "-o", bin/"conga", "."
  end

  test do
    system "#{bin}/conga", "--version"
  end
end
