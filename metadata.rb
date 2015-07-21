name 'bsdcpio'
source_url "https://github.com/chef-brigade/#{name}-cookbook" if respond_to?(:source_url)
issues_url "https://github.com/chef-brigade/#{name}-cookbook/issues" if respond_to?(:issues_url)
maintainer 'Chef Brigade'
maintainer_email 'help@chefbrigade.io'
license 'Apache 2.0'
description 'Installs bsdcpio'
version '1.0.0'

recipe 'bsdcpio::default', 'Installs bsdcpio package'

supports 'ubuntu'
