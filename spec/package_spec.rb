require 'chefspec'

describe 'bsdcpio default' do
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'bsdcpio::default' }
  it 'installs bsdcpio' do
    chef_run.should install_package 'bsdcpio'
  end
end
