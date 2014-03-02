# Steps

## Step `0-init`

### Generate project without test framework defined

`rails contacts -T`

### Add and initialize `rspec`

* open Gemfile and add following section:

```ruby
group :test do
  gem 'rspec-rails'
end
```

* initialize `rspec`: `rails g rspec:install`
`
## Step `1-welcome`

### Add capybara into your `Gemfile`:

```ruby
group :test do
  gem 'rspec-rails'
  gem 'capybara'
end
```

and add required import into `spec/spec_helper.rb`

`require 'capybara/rails'`

### Create you first story

* create `spec/features/welcome_spec.rb`

```ruby
require "spec_helper"

describe 'welcome page' do
  it 'welcomes new users' do
    visit '/'
    expect(page).to have_content 'Welcome from Rails'
  end
end
```

* run test (`bundle exec rspec`) - result `failed`
* generate `welcome_controller` with index method

`rails g controller welcome index`

* implements controller `index` method

```ruby
def index
  @welcome_msg = 'Welcome from Rails'
end
```

* update welcome index page

```erb
<h1><%= @welcome_msg %></h1>
```

* run test (`bundle exec rspec`) - result `success`

## Step `2-persistence`

### Create `contact` model and views

* `rails g scaffold contact firstname lastname email telephone`
* apply migration: `bin/rake db:migrate`
* start rails app `rails s`
* play with http://localhost:3000/contacts

## Step `3-devise`

* add devise into your Gemfile: `gem 'devise'`
* install missing bundle: `bundle install`
* run devise generator: `rails generate devise:install`
* generate user model: `rails g model user`
* apply migrations: `bin/rake db:migrate`
* play with http://localhost:3000/contacts

## Step `4-spring`
 * add spring into your Gemfile `gem "spring", group: :development`
 * add rspec spring integration into your Gemfile `gem "spring-commands-rspec", group: :development`
 * update dependencies: `bundle install`
 * springify executables: `bundle exec spring binstub --all`
 * start tests using following command `./bin/spring rspec`

## Step `5-guard`
  * add guard into Gemfile development group:

```
gem 'guard-rspec', require: false`
gem 'guard-spring'
```
  * install missing gems: `bundle install`
  * execute `guard init spring`
  * start guard: `guard`