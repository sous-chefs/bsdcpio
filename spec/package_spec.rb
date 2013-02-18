require 'chefspec'

describe 'bsdcpio default' do
  let(:chef_run) { ChefSpec::ChefRunner.new(cookbook_path: File.expand_path('../../..', __FILE__)).converge 'bsdcpio::default' }
  it 'installs bsdcpio' do
    chef_run.should install_package 'bsdcpio'
  end
end
