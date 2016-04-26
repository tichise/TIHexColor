Pod::Spec.new do |s|
  s.name = 'TIHexColor'
  s.version = '1.0'
  s.license = 'MIT'
  s.summary = 'TIHexColor is a class with hex support for UIColor.'
  s.homepage = 'https://github.com/tichise/TIHexColor'
  s.social_media_url = 'http://twitter.com/tichise'
  s.author = "Takuya Ichise"
  s.source = { :git => 'https://github.com/tichise/TIHexColor.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
  
end