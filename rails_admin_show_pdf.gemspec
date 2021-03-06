$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_show_pdf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_show_pdf"
  s.version     = RailsAdminShowPdf::VERSION
  s.authors     = ["bastien"]
  s.email       = ["bastien@cruxandco.com"]
  s.summary     = "rails admin custom action"
  s.description = "rails admin custom action for show ressource in pdf"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end
