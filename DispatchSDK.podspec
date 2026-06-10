Pod::Spec.new do |s|
  s.name          = 'DispatchSDK'
  s.version       = '0.1.0'
  s.summary       = 'Dispatch CDS orders SDK for iOS (binary XCFramework)'
  s.description   = 'Embeddable vehicle-orders feature: list, filters, create/edit, additional costs, prolongation, map. Binary distribution.'
  s.homepage      = 'https://github.com/dispatchcds/dispatch-sdk-ios'
  s.license       = { :type => 'Proprietary', :text => 'Dispatch CDS proprietary. See https://github.com/dispatchcds/dispatch-sdk-ios/blob/main/LICENSE' }
  s.authors       = { 'Dispatch CDS' => 'dispatch@bi.group' }
  s.platform      = :ios, '16.0'
  s.swift_version = '5.9'
  s.source        = { :http => 'https://github.com/dispatchcds/dispatch-sdk-ios/releases/download/0.1.0/DispatchSDK.xcframework.zip' }
  s.vendored_frameworks = 'DispatchSDK.xcframework'
end
