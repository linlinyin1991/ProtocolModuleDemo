Pod::Spec.new do |s|

  s.name         = "EL_MoudleALib"
  s.version      = "0.0.2"
  s.summary      = "EL_MoudleALib is a Category for Mediator and A moudle"
  s.description  = <<-DESC
    HomeMoudle is a Category for Mediator and A moudle,A_Category is a Category for Mediator and A moudle
                   DESC

  s.homepage         = 'https://github.com/linlinyin1991/A_Category'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "ElaineYin" => "linlinyin1991@163.com" }
  s.source       = { :git => "https://github.com/linlinyin1991/EL_MoudleALib.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit'
  s.source_files  = "EL_MoudleALib/Classes/**/*"
  s.dependency 'MediaService'
end
