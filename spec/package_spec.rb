require 'chefspec'

def supported_platforms
  {
    'ubuntu' => ['16.04'],
  }
end

describe 'bsdcpio::default' do
  # Test all defaults on all platforms
  supported_platforms.each do |platform, versions|
    versions.each do |version|
      context "on #{platform.capitalize} #{version}" do
        let(:chef_run) do
          ChefSpec::SoloRunner
            .new(platform: platform, version: version)
            .converge 'bsdcpio::default'
        end
        it 'installs bsdcpio' do
          expect(chef_run).to install_package 'bsdcpio'
        end
      end
    end
  end
end
