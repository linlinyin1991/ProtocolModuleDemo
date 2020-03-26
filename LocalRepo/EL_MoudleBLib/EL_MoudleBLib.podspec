Pod::Spec.new do |s|

  s.name         = "EL_MoudleBLib"
  s.version      = "0.0.2"
  s.summary      = "EL_MoudleBLib is a Category for Mediator and A moudle"
  s.description  = <<-DESC
    B_Moudle is a Category for Mediator and A moudle,A_Category is a Category for Mediator and A moudle
                   DESC

  s.homepage         = 'https://github.com/linlinyin1991/B_Moudle'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "yin linlin" => "linlin.yin@bkjk.com" }
  s.source       = { :git => "https://github.com/linlinyin1991/EL_MoudleBLib.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.frameworks = 'UIKit'
  s.source_files  = "EL_MoudleBLib/Classes/**/*"
  s.dependency 'MediaService'
end
