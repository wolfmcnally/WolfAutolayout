Pod::Spec.new do |s|
    s.name             = 'WolfAutolayout'
    s.version          = '1.2.0'
    s.summary          = 'Conveniences for working with Autolayout.'

    s.homepage         = 'https://github.com/wolfmcnally/WolfAutolayout'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Wolf McNally' => 'wolf@wolfmcnally.com' }
    s.source           = { :git => 'https://github.com/wolfmcnally/WolfAutolayout.git', :tag => s.version.to_s }

    s.source_files = 'WolfAutolayout/Classes/**/*'

    s.swift_version = '4.2'

    s.ios.deployment_target = '9.3'
    s.macos.deployment_target = '10.13'
    s.tvos.deployment_target = '11.0'

    s.module_name = 'WolfAutolayout'

    s.dependency 'WolfFoundation'
    s.dependency 'WolfGeometry'
    s.dependency 'WolfOSBridge'
    s.dependency 'WolfPipe'
end
