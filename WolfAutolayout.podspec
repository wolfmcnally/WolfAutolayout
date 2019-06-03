Pod::Spec.new do |s|
    s.name             = 'WolfAutolayout'
    s.version          = '2.1.0'
    s.summary          = 'Conveniences for working with Autolayout.'

    s.homepage         = 'https://github.com/wolfmcnally/WolfAutolayout'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Wolf McNally' => 'wolf@wolfmcnally.com' }
    s.source           = { :git => 'https://github.com/wolfmcnally/WolfAutolayout.git', :tag => s.version.to_s }

    s.source_files = 'Sources/WolfAutolayout/**/*'

    s.swift_version = '5.0'

    s.ios.deployment_target = '9.3'
    s.macos.deployment_target = '10.13'
    s.tvos.deployment_target = '11.0'

    s.module_name = 'WolfAutolayout'

    s.dependency 'WolfCore'
    s.dependency 'WolfGraphics'
end
