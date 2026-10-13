cask "videobricks" do
  arch arm: "aarch64", intel: "x64_x86_64"

  version "1.0.5"
  sha256 arm:   "403c3a650891b2838eae15abbf1325de0f9603f65a3c8639c3ef48541f98529e",
         intel: "809499b1c633791932ad24717e357600a649010f405a8e10811b76c3cf1dba87"

  url "https://github.com/alonsorobots/VideoBricks/releases/download/v#{version}/VideoBricks_#{version}_#{arch}.dmg"
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
