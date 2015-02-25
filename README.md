# RspecSupportMethods

This is gem with helpers methods for RSpec

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_support_methods'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_support_methods

## Setup

In your `spec_helper.rb` or `rails_helper.rb` add this:

```ruby
require 'rspec_support_methods'
```

For include all helpers methods add to `RSpec` configutation:

```ruby
RSpec.configure do |config|
  config.include RspecSupportMethods
end
```

or you can use only specific module:

```ruby
RSpec.configure do |config|
  config.include RspecSupportMethods::Randomizer
  config.include RspecSupportMethods::TemporaryFile
end

```

## Usage

You can use helpers methods:

```ruby
rand_email(size) # default 5
# => "hckjy@example.com"

rand_text(size) # default 5
# => "lgdbf"

rand_fixnum(min, max)
# => 2

rand_date
# => "24-12-2007"

temp_file(content_of_file)
# => #<File:/tmp/tmp20150225-10087-8o38oh (closed)>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rspec_support_methods/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
