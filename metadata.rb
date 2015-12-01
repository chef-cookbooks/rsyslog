name              'rsyslog'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs and configures rsyslog'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '3.0.0'

recipe            'rsyslog', 'Sets up rsyslog for local logging'
recipe            'rsyslog::remote_logging', 'Sets up logging to a remote syslog server'
recipe            'rsyslog::server', 'Sets up an rsyslog server'

supports          'ubuntu', '>= 10.04'
supports          'debian', '>= 5.0'
supports          'redhat', '>= 5.0'
supports          'centos', '>= 5.0'
supports          'fedora', '>= 20.0'
supports          'scientific'
supports          'amazon'
supports          'oracle'

depends           'compat_resource'

source_url 'https://github.com/chef-cookbooks/rsyslog' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/rsyslog/issues' if respond_to?(:issues_url)
