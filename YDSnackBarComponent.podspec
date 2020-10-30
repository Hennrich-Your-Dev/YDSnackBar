Pod::Spec.new do |spec|

  spec.name         = "YDSnackBarComponent"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of YDSnackBarComponent."

  spec.homepage     = "https://yourdev.com.br"
  spec.license      = "MIT"
  spec.author       = { "Douglas Hennrich" => "douglashennrich@yourdev.com.br" }

  spec.platform         = :ios, "11.0"
  spec.source           = { :git => "https://github.com/Hennrich-Your-Dev/YDSnackBar.git", :tag => spec.version }
  spec.source_files     = "YDSnackBarComponent/**/*.{h,m,swift,xib,storyboard}"
  spec.public_header_files = "YDSnackBarComponent/**/*.h"
  spec.swift_version    = "5.0"

  spec.dependency       "MaterialComponents/Snackbar"
end
