platform :ios, '13.0'

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
               end
          end
   end
end

target 'CleanUI' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod "SwiftGen"
  pod "SDWebImage"
  pod "Moya/Combine"
  pod "SwiftyJSON"
  pod "RealmSwift"
  pod 'CombineCocoa'

  target 'CleanUITests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CleanUIUITests' do
    # Pods for testing
  end

end
