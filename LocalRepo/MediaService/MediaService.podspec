Pod::Spec.new do |s|

  s.name         = "MediaService"
  s.version      = "0.0.1"
  s.summary      = "MediaService is a Category for Mediator and A moudle"
  s.description  = <<-DESC
    B_Category is a Category for Mediator and A moudle,A_Category is a Category for Mediator and A moudle
                   DESC

  s.homepage         = 'https://github.com/linlinyin1991/MediaService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "ElaineYin" => "linlinyin1991@163.com" }
  s.source       = { :git => "https://github.com/linlinyin1991/MediaService.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit'
  s.source_files  = "MediaService/Classes/*.{h,m}"
  
end
