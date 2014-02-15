source 'https://rubygems.org'

gem 'rails', '4.0.2'

gem 'sass-rails',   '~> 4.0.1'
gem 'coffee-rails', '~> 4.0.1'
gem 'uglifier', '>= 2.4.0'      #Javascript minifier

gem 'jquery-rails'      #User Jquery
gem 'bootstrap-sass'    #Adds twitter bootstrap
gem 'formtastic'        #Add semantic form for
gem 'formtastic-bootstrap'
gem 'devise'            #Authentication
gem 'newrelic_rpm'      #Adds application monitoring
gem 'thin'              #Using Thin webserver

# gem 'jbuilder'        # To use Jbuilder templates for JSON
# gem 'capistrano'      # Deploy with Capistrano

#gem 'protected_attributes'

gem 'faker' #delete me

group :production do
  gem 'pg'              #Heroku default database
  gem 'rails_12factor'  #Heroku Gem
end

group :development do
  gem 'rails_layout'    #Generates lays for frontend frameworks
  gem 'sqlite3'         #Development database
end

group :development, :test do
  #gem 'faker'
  gem 'debugger'
  gem 'factory_girl' #, '~> 2.2'
  gem 'rspec-rails' #, '~> 2.0'
  gem 'simplecov', :require => false
  gem 'capybara'  
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'launchy'
  gem 'database_cleaner'
  gem 'railroady'       #UML Class diagram: rake diagram:all
end
