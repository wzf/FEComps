Pod::Spec.new do |s|
  s.name             = "FEComps"
  s.version          = "0.0.2"
  s.summary          = "A short description of FEComps."
  s.description      = <<-DESC
                       把平时常用的工具、Category扩展、Log日志方式做了一个汇总，希望可以在APP开发中提供一个快速的配置跟应用
                       DESC
  s.homepage         = "https://github.com/wzf/FEComps"
  s.license          = 'MIT'
  s.author           = { "Jeff" => "feng4job@gmail.com" }
  s.source           = { :git => "https://github.com/wzf/FEComps.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FEComps' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
