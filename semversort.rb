class Semversort < Formula
  desc "Sort semantic version strings"
  homepage "https://github.com/samrees/semversort"

  version = "202503121611-c314e56"

  on_macos do
    on_arm do
      url "https://github.com/samrees/semversort/releases/download/#{version}/semversort-darwin-arm64"
      sha256 "176d67f0613a0fdf25092bd62c9edf9a01c1eaa0d7495aca64a9c31c1d4cc218"
    end
    on_intel do
      url "https://github.com/samrees/semversort/releases/download/#{version}/semversort-darwin-amd64"
      sha256 "26cd96b90d6d545bba362558bd9a03780f6d78c66a22eb922b7a1e4fe3541a18"
    end
  end

  def install
    bin.install Dir.glob("semversort-*").first => "semversort"
    chmod 0755, bin/"semversort"
  end
end
