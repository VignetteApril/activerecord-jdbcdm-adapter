# -*- encoding: utf-8 -*-
$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/dm/version'

Gem::Specification.new do |gem|
  gem.name = %q{jdbc-mysql}
  gem.version = Jdbc::DM::VERSION

  gem.authors = ['Zhang Jie']
  gem.email = ['zhangjieboot@gmail.com']
  gem.homepage = ''
  gem.licenses = ['MIT']

  gem.files = [ 'README.md', 'LICENSE.txt', *Dir['lib/**/*'].to_a ]

  gem.rdoc_options = ["--main", "README.md"]
  gem.require_paths = ["lib"]

  gem.summary = %q{JDBC driver for JRuby and DM (used by ActiveRecord-JDBC).}
  gem.description = %q{Install this gem `require 'jdbc/dm'` and invoke `Jdbc::DM.load_driver` within JRuby to load the driver.}
end
