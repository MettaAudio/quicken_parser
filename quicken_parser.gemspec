# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "quicken_parser/version"

Gem::Specification.new do |s|
  s.name = %q{quicken_parser}
  s.version = QuickenParser::VERSION

  s.required_ruby_version = ">= 2.7"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Fran\303\247ois Beausoleil"]
  s.date = %q{2009-05-02}
  s.description = %q{This is a quick'n'dirty gem to parse Quicken QFX format.}
  s.email = %q{francois@teksol.info}
  s.files = Dir["LICENSE", "README.md", "Rakefile", "TODO", "lib/**/*.rb", "test/**/*"]
  s.homepage = %q{http://github.com/francois/quicken_parser}
  s.require_paths = ["lib"]
  s.summary = %q{This is a quick'n'dirty gem to parse Quicken QFX format.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    s.add_development_dependency(%q<rake>)
    s.add_development_dependency(%q<test-unit>)
    s.add_development_dependency(%q<thoughtbot-shoulda>)
    s.add_runtime_dependency(%q<FooBarWidget-money>, ["~> 2"])
    s.add_runtime_dependency(%q<rexml>)
  end
end
