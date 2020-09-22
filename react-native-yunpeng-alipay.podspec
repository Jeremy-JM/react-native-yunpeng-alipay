require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = 'https://github.com/Jeremy-JM/react-native-yunpeng-alipay.git'
  s.platform     = :ios, '7.0'
  s.source              = { :git => 'https://github.com/Jeremy-JM/react-native-yunpeng-alipay.git', :tag => 'v#{s.version}' }
  s.requires_arc        = true
  s.platform            = :ios, '7.0'

  s.vendored_frameworks = 'ios/AlipaySDK.framework'
  s.resources = 'ios/AlipaySDK.bundle'
  s.dependency 'React-Core'
  s.subspec 'Core' do |ss|
    ss.source_files     = 'ios/AlipayModule/*.{h,m}'
  end

end
