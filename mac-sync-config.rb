class MacSyncConfig < Formula
  desc "Sync your config files between macs through your Github repository."
  homepage "https://github.com/jopemachine/mac-sync-config"
  url "https://github.com/jopemachine/mac-sync-config.git", :tag => "v0.1.0"
  license "MIT"

  depends_on "go" => :build

  head do
    url "https://github.com/jopemachine/mac-sync-config.git", :branch => "master"
  end

  def install
    system "go", "build", "."
    bin.install "mac-sync-config"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/mac-sync-config", "--version"
  end
end