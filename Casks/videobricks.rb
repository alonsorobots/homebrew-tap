cask "videobricks" do
  version "1.0.1"
  sha256 "PLACEHOLDER"

  url "https://github.com/alonsorobots/VideoBricks/releases/download/v#{version}/VideoBricks_#{version}_aarch64.dmg"
  name "VideoBricks"
  desc "Convert videos to high-quality GIFs and MP4s"
  homepage "https://github.com/alonsorobots/VideoBricks"

  depends_on formula: "ffmpeg"

  app "VideoBricks.app"

  zap trash: [
    "~/Library/Application Support/com.alonsorobots.videobricks",
    "~/Library/Caches/com.alonsorobots.videobricks",
  ]
end
