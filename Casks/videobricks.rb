cask "videobricks" do
  version "1.0.1"
  sha256 "b15bea3ca01be665bb6dba85151da27e27e9695b9fb25487453d9ff9fb3eccaf"

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
