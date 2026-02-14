cask "videobricks" do
  version "1.0.1"
  sha256 "82862659ae64e5147a78f9f02961ae2ae4bae7fb9a3829ec92167b80644d300d"

  url "https://github.com/alonsorobots/VideoBricks/releases/download/v#{version}/VideoBricks_#{version}_aarch64.dmg"
  name "VideoBricks"
  desc "Convert videos to high-quality GIFs and MP4s"
  homepage "https://github.com/alonsorobots/VideoBricks"

  depends_on formula: "ffmpeg"

  app "VideoBricks.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VideoBricks.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.alonsorobots.videobricks",
    "~/Library/Caches/com.alonsorobots.videobricks",
  ]
end
