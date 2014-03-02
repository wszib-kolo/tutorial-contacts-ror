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