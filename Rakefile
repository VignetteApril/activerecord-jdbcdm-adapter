# NOTE: shared Rakefile used for jdbc-xxx gems
require 'bundler/gem_helper'

name = Dir["*.gemspec"].first.sub('.gemspec', '')
gem_helper = Bundler::GemHelper.new(Dir.pwd, name)
def gem_helper.version_tag
  "#{name}-#{version}" # override "v#{version}"
end

version = gem_helper.send(:version)
version_tag = gem_helper.version_tag
desc "Build #{name}-#{version} gem into the pkg directory"
task('build') { gem_helper.build_gem }

desc "Build and install #{name}-#{version} gem into system gems"
task('install') { gem_helper.install_gem }

desc "Create tag #{version_tag} build and push #{name}-#{version} gem to Rubygems"
task('release') do
  gem_helper.instance_eval do
    guard_clean
    built_gem_path = build_gem
    tag_version unless already_tagged?
    rubygem_push(built_gem_path) if gem_push?
  end
end
