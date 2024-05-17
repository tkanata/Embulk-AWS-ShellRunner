# -*- encoding: utf-8 -*-
# stub: embulk 0.11.3 java lib

Gem::Specification.new do |s|
  s.name = "embulk".freeze
  s.version = "0.11.3"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/embulk/embulk/issues", "changelog_uri" => "https://github.com/embulk/embulk/releases", "documentation_uri" => "https://www.embulk.org/", "homepage_uri" => "https://www.embulk.org/", "source_code_uri" => "https://github.com/embulk/embulk/tree/v0.11.3" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sadayuki Furuhashi".freeze, "Muga Nishizawa".freeze, "Dai MIKURUBE".freeze]
  s.date = "2024-03-11"
  s.description = "Embulk's runtime library for Ruby. Embulk users need to install it when running a gem-packaged plugin.".freeze
  s.email = "frsyuki@gmail.com".freeze
  s.homepage = "https://www.embulk.org/".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Embulk's runtime library for Ruby.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<msgpack>.freeze, [">= 1.1.0"])
  else
    s.add_dependency(%q<msgpack>.freeze, [">= 1.1.0"])
  end
end
