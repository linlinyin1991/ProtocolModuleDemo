Pod::Spec.new do |s|

  s.name         = "WorkSProtocol"
  s.version      = "0.0.1"
  s.summary      = "WorkSProtocol is a protocol to use WorkSpaceMoudle"
  s.description  = <<-DESC
    WorkSProtocol is a protocol to use WorkSpaceMoudle,WorkSProtocol is a protocol to use WorkSpaceMoudle
                   DESC

  s.homepage         = 'https://github.com/linlinyin1991/WorkSProtocol'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "ElaineYin" => "linlinyin1991@163.com" }
  s.source       = { :git => "https://github.com/linlinyin1991/WorkSProtocol.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit'
  s.source_files  = "WorkSProtocol/Classes/*.{h}"


end
