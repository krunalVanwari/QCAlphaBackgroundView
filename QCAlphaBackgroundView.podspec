Pod::Spec.new do |s|
  s.name             = 'QCAlphaBackgroundView'
  s.version          = '1.0'
  s.summary          = 'A subclass of UIView that acts as an Alpha channel. Best used to show transparent images.'
  s.homepage         = 'https://github.com/krunalVanwari/QCAlphaBackgroundView'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Qurious Click' => 'https://www.quriousclick.com' }
  s.source           = { :git => 'https://github.com/krunalVanwari/QCAlphaBackgroundView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/QCAlphaBackgroundView/**/*'
end
