# README
## Welcome To the Recipes Sharing Data Management System
The main purpose of this app is to allow users to share food recipes among them,
users can only manipulate records they have created themselves, comment on their own or somebody
else's record, send email to others users, browse recipes by categories or find them by servings or names, 
see all reviews made by a specific user
the app has some validations that goes against duplication, their is some meaningful flash messages all over 
the app for the users best experiences

## Ruby version '2.6.1'

## System dependencies
- gem 'rails', '~> 6.0.2'
- gem 'sass-rails', '>= 6'
- gem 'puma', '~> 4.1'
- gem 'webpacker', '~> 4.0'
- gem 'turbolinks', '~> 5'
- gem 'jbuilder', '~> 2.7'
- gem 'bootsnap', '>= 1.4.2', require: false
- gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
- gem 'omniauth-facebook'
- gem 'omniauth' 
- gem 'devise'
```
group :development, :test do
-  gem 'sqlite3'
-  gem 'dotenv-rails'
-  gem 'rspec-rails'
-  gem 'pry-rails'
-  gem 'web-console', '>= 3.3.0'
-  gem 'listen', '>= 3.0.5', '< 3.2'
-  gem 'spring'
-  gem 'spring-watcher-listen', '~> 2.0.0'
end
```

```
group :production do 
-  gem 'pg'         
end
```


## Configuration
- Have Ruby install in your local environment, use Linux or Mac or windows OS

## Deployment instructions
1. Fork and clone 
2. run bundle install
3. run rails server 
4. Go to http://localhost:3000/ on your browser
5. Signin using your Facebook account or create a new one

* ...
## Authors © 2019 by AssaneSav

License This project is licensed under the MIT License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
