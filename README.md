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