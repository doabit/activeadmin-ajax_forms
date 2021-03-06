$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_ajax_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_ajax_form"
  s.version     = ActiveadminAjaxForm::VERSION
  s.authors     = ["doabit"]
  s.email       = ["doinsist@gmail.com"]
  s.homepage    = "http://github.com/doabit"
  s.summary     = "activeadmin ajax form"
  s.description = "activeadmin ajax form"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0"
  s.add_dependency "activeadmin"
  s.add_dependency 'ransack'

  s.add_development_dependency "sqlite3"
end
