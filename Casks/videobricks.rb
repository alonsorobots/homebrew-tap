cask "videobricks" do
  version "1.0.2"
  sha256 "4894cf25a11c29af103d8adbce5a0ca2e10e391866b8581f7c56b7c25f3be59f"

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
