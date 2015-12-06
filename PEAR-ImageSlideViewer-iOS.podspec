Pod::Spec.new do |s|
   s.name     = 'PEAR-ImageSlideViewer-iOS'
   s.version  = '0.1.1'
   s.platform = :'ios', '8.0'
   s.license  = 'MIT'
   s.summary  = 'This library will display slide images.'
   s.homepage = 'https://github.com/HirokiUmatani/PEAR-ImageSlideViewer-iOS'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/PEAR-ImageSlideViewer-iOS.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-ImageSlideViewer-iOS/*.{h,m}'
   s.resources    = 'PEAR-ImageSlideViewer-iOS/resources/*'
   s.dependency 'PEAR-AutoLayout-iOS'
   s.requires_arc = true
end
