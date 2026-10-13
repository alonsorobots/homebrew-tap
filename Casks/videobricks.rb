cask "videobricks" do
  arch arm: "aarch64", intel: "x64_x86_64"

  version "1.0.6"
  sha256 arm:   "b64fa70e9abecc4878b6718c0a12bac8894e6eccb2cbc96db8ca8670716f9241",
         intel: "e4d8634ec6d0a8ea8be90363a56fbbe38b78241158af322a12ac997ba89fd240"

  url "https://github.com/alonsorobots/VideoBricks/releases/download/v#{version}/VideoBricks_#{version}_#{arch}.dmg"
  name "VideoBricks"
  desc "Convert videos to high-quality GIFs and MP4s"
  homepage "https://github.com/alonsorobots/VideoBricks"

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
