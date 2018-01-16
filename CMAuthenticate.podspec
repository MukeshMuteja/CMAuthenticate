#
# Be sure to run `pod lib lint CMAuthenticate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CMAuthenticate'
  s.version          = '0.1.0'
  s.summary          = 'Authentication CMAuthenticate.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MukeshMuteja/TestingPods.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MukeshMuteja ' => 'mm.mukeshmuteja@gmail.com' }
  s.source           = { :git => 'https://github.com/MukeshMuteja/CMAuthenticate.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CMAuthenticate/Classes/**/*'

  # s.resource_bundles = {
  #   'CMAuthenticate' => ['CMAuthenticate/Assets/*.png']
  # }

#    s.public_header_files = 'CMAuthenticate/Classes/**/*'
#s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => 'Pod/Header/*.h' }

    s.frameworks = 'SystemConfiguration', 'SafariServices'
    s.frameworks = 'SystemConfiguration'
 s.dependency 'FacebookCore', '~> 0.3.0'
 s.dependency 'FacebookLogin', '~> 0.3.0'
 s.dependency 'AFNetworking', '~> 3.1.0'

#s.libraries = 'libc++', 'z'
s.vendored_frameworks = [   'CMAuthenticate/Framework/GoogleSignIn.framework',
                            'CMAuthenticate/Framework/GoogleSignInDependencies.framework',
                            'CMAuthenticate/Framework/TwitterKit.framework',
                            'CMAuthenticate/Framework/TwitterCore.framework',
                        ]
end
