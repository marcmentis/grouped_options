# GroupedOptions

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'grouped_options', git: 'git@github.com:marcmentis/grouped_options.git'


And then execute:

    $ bundle


## Usage

### In Controller   
Get the data to be converted into the 2d array. I.e., from a database      
```
@forSelect = ForSelect.all
  .where(code: 'ward')
  .order(option_order: :asc)
```

Create the 2d array and assign it to an instance variable.    
```
@grouped_options = GroupedOptions.grouped_options(@forSelect)
```

### In Table 
Create the Grouped Select dropdown:   

Pass the 2d array (@grouped_options) as an argument to `grouped_options_for_select` within a `select_tag` helper.
   
```
<%= select_tag(:ward_id, grouped_options_for_select(@grouped_options), prompt: 'Choose Ward') %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/grouped_options/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
