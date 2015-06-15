Pod::Spec.new do |s|
  s.name             = "DSInsetLabel"
  s.version          = "0.1.0"
  s.summary          = "Simple UILabel subclass to use padding insets and max width"
  s.description      = <<-DESC
                       * The DSInsetLabel will let you set **padding insets** and **resize** the label while respecting the insets.
                       * You also have the option of setting a **max width** on the label that will also respect the insets.
                       DESC
  s.homepage         = "https://github.com/thbaja/DSInsetLabel"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Thomas Baastrup Jacobsen" => "thbaja@drysingleton.com" }
  s.source           = { :git => "https://github.com/thbaja/DSInsetLabel.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/thomasbjacobsen'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DSInsetLabel' => ['Pod/Assets/*.png']
  }
end
