Pod::Spec.new do |s|
  s.name         = 'ResearchKit'
  s.version      = '1.5.2'
  s.summary      = 'ResearchKit is an open source software framework that makes it easy to create apps for medical research or for other research projects.'
  s.homepage     = 'https://www.github.com/ResearchKit/ResearchKit'
  s.documentation_url = 'http://researchkit.github.io/docs/'
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { 'researchkit.org' => 'http://researchkit.org' }
  s.source       = { :git => 'https://github.com/ResearchKit/ResearchKit.git', :tag => s.version.to_s }
  s.public_header_files = `./scripts/find_headers.rb --public --private`.split("\n")
  s.source_files = 'ResearchKit/**/*.{h,m,swift}'
  s.resources    = 'ResearchKit/**/*.{fsh,vsh}', 'ResearchKit/Animations/**/*.m4v', 'ResearchKit/Artwork.xcassets', 'ResearchKit/Localized/*.lproj'
  s.platform     = :ios, '8.2'
  s.requires_arc = true,
  s.dependency 'Alamofire', :git => 'https://github.com/Alamofire/Alamofire.git' #:path => '/Users/dinesh.vaghasia/Desktop/appbakery_ios/Web2RKCommon/Web2RKCommon.podspec'

  #s.subspec 'Web2RKCommon' do |web2rkcommon|
  #  web2rkcommon.source_files   = 'Web2RKCommon/**/*.{h,m,swift}'
  #  web2rkcommon.dependency 'Web2RKCommon'
  #end

end
