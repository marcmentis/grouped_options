# GroupedOptions

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'grouped_options'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grouped_options

## Usage

TODO: Write usage instructions here

### In Controller    
```
@forSelect = ForSelect.all
  .where(code: 'ward')
  .order(option_order: :asc)  
@grouped_options = ForSelect.grouped_options(@forSelect)
```

### In Table    
```
<%= select_tag(:ward_id, grouped_options_for_select(@grouped_options), prompt: 'Choose Ward') %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/grouped_options/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
