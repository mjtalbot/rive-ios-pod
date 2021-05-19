Pod::Spec.new do |spec|
  spec.name         = "RiveRuntime"
  spec.version      = "0.0.3"
  spec.summary      = "iOS SDK for Rive"
  spec.description  = "Rive iOS framework"
  spec.homepage     = "https://rive.app"
  spec.license      = { :type => "MIT", :text => <<-LICENSE
    Copyright (c) 2020-2021 Rive

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
    LICENSE
  }
  spec.authors = { "mjtalbot" => "" }
  spec.platform               = :ios, '11.3'
  spec.ios.deployment_target  = '11.3'
  spec.swift_version          = '5.0'
  spec.source       = { 
    :git => "https://github.com/rive-app/test-ios.git",
    :tag => "v#{spec.version}"
  }
  spec.ios.vendored_frameworks = 'RiveRuntime.xcframework'
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
