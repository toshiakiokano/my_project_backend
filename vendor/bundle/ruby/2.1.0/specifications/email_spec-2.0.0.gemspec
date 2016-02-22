# -*- encoding: utf-8 -*-
# stub: email_spec 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "email_spec"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ben Mabey", "Aaron Gibralter", "Mischa Fierer"]
  s.date = "2016-01-15"
  s.description = "Easily test email in RSpec, Cucumber, and MiniTest"
  s.email = "ben@benmabey.com"
  s.extra_rdoc_files = ["README.md", "MIT-LICENSE.txt"]
  s.files = ["MIT-LICENSE.txt", "README.md"]
  s.homepage = "http://github.com/bmabey/email-spec/"
  s.licenses = ["MIT"]
  s.rubyforge_project = "email-spec"
  s.rubygems_version = "2.2.2"
  s.summary = "Easily test email in rspec and cucumber and minitest"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<htmlentities>, ["~> 4.3.3"])
      s.add_runtime_dependency(%q<launchy>, ["~> 2.1"])
      s.add_runtime_dependency(%q<mail>, ["~> 2.6.3"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.3.17"])
      s.add_development_dependency(%q<cucumber-rails>, ["~> 1.4.2"])
      s.add_development_dependency(%q<cucumber-sinatra>, ["~> 0.5.0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, [">= 0"])
    else
      s.add_dependency(%q<htmlentities>, ["~> 4.3.3"])
      s.add_dependency(%q<launchy>, ["~> 2.1"])
      s.add_dependency(%q<mail>, ["~> 2.6.3"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<cucumber>, ["~> 1.3.17"])
      s.add_dependency(%q<cucumber-rails>, ["~> 1.4.2"])
      s.add_dependency(%q<cucumber-sinatra>, ["~> 0.5.0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
      s.add_dependency(%q<test-unit>, [">= 0"])
    end
  else
    s.add_dependency(%q<htmlentities>, ["~> 4.3.3"])
    s.add_dependency(%q<launchy>, ["~> 2.1"])
    s.add_dependency(%q<mail>, ["~> 2.6.3"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<cucumber>, ["~> 1.3.17"])
    s.add_dependency(%q<cucumber-rails>, ["~> 1.4.2"])
    s.add_dependency(%q<cucumber-sinatra>, ["~> 0.5.0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
    s.add_dependency(%q<test-unit>, [">= 0"])
  end
end
