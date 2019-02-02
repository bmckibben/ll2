source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'devise'
gem 'simple_form'
gem 'haml'
gem 'haml-rails'
gem 'browser-timezone-rails'
gem 'activeadmin'
gem 'request_store'
gem 'kaminari'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-validation-rails'

# Markup and design related libraries
gem 'bootstrap-sass'
gem 'bootstrap-select-rails'
gem 'font-awesome-sass'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# textarea wysiwyg
gem 'tinymce-rails'

# per heroku
gem 'rails_12factor'

group :development do
  gem 'better_errors'
  gem "binding_of_caller" 
  gem "annotate"
  # javascript runtine is required for Windows Subsystem for Linux/Ubuntu
  gem 'therubyracer', platforms: :ruby  
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]   
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
