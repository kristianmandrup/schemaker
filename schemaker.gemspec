# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "schemaker"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = "2011-10-12"
  s.description = "Configures relationships between subject, join and object model for a given behavior"
  s.email = "kmandrup@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.textile"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.textile",
    "Rakefile",
    "VERSION",
    "lib/schemaker.rb",
    "lib/schemaker/models.rb",
    "lib/schemaker/models/base_model.rb",
    "lib/schemaker/models/join_model.rb",
    "lib/schemaker/models/object_model.rb",
    "lib/schemaker/models/subject_model.rb",
    "schemaker.gemspec",
    "spec/active_record/active_record_helper.rb",
    "spec/active_record/active_record_spec.rb",
    "spec/active_record/db/database.yml",
    "spec/active_record/migrations/create_models.rb",
    "spec/models_helper.rb",
    "spec/schemaker/model/join_spec.rb",
    "spec/schemaker/model/object_spec.rb",
    "spec/schemaker/model/subject_spec.rb",
    "spec/schemaker/models_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kristianmandrup/schemaker"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Schema maker takes care of configuring your model schemas to map behavior"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sweetloader>, [">= 0.1.1"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_development_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 0.6.8"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<cutter>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 1"])
      s.add_development_dependency(%q<jeweler>, [">= 1.6"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<sweetloader>, [">= 0.1.1"])
      s.add_dependency(%q<activerecord>, [">= 3.0.1"])
      s.add_dependency(%q<rspec>, [">= 2.6.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 0.6.8"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<cutter>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 1"])
      s.add_dependency(%q<jeweler>, [">= 1.6"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<sweetloader>, [">= 0.1.1"])
    s.add_dependency(%q<activerecord>, [">= 3.0.1"])
    s.add_dependency(%q<rspec>, [">= 2.6.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 0.6.8"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<cutter>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 1"])
    s.add_dependency(%q<jeweler>, [">= 1.6"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

