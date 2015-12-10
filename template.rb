# Use this template when generating new Rails apps as follows:
# rails new my_application --template=https://raw.githubusercontent.com/liquid/rails-template/master/template.rb

gem_group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
end

gem_group :development do
  gem 'guard-livereload', '~> 2.4', require: false
  gem 'guard-rspec', require: false
  gem 'annotate'
end

gem_group :test do
  gem 'capybara'
end

generator_config = %Q{
  config.generators do |generators|
    generators.helper       false
    generators.javascripts  false
    generators.stylesheets  false
    generators.assets       false
    generators.view_specs   false
    generators.helper_specs false
  end
}

environment generator_config

run "bundle install"

generate 'rspec:install'
generate 'annotate:install'

after_bundle do
  git :init
  git add: "."
  git commit: %Q{ -m 'Initial Rails application' }
end
