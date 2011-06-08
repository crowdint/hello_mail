# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hello_mail/version"

Gem::Specification.new do |s|
  s.name        = "hello_mail"
  s.version     = HelloMail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Padilla"]
  s.email       = ["david@crowdint.com"]
  s.homepage    = "http://rubygems.org/gems/hello_mail"
  s.summary     = %q{Add a rake task to test your mail configuration on Rails 3}
  s.description = %q{Add a rake task to test your mail configuration on Rails 3}

  s.add_dependency('rails', '~>3')
  s.add_development_dependency('rake', '~>0.8')

  s.rubyforge_project = "hello_mail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
