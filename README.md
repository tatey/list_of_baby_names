# BabyNames

Baby name data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baby_names'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baby_names

## Usage

Get the first name from the Hadley data set:

    hadley = BabyNames.hadley
    hadley.size # => 258000

    last = hadley.last
    last.name # => "Sloane"
    last.gender # => :female
    last.year # => 2008
    last.position # => 1000

Get the list of data sets:

    BabyNames.data_sets # => [:hadley, :south_australia, :queensland]

## Data Sets

* [Hadley (Distribution of US baby names, 1880-2008)](https://github.com/hadley/data-baby-names)
* [South Australia (2016)](https://data.sa.gov.au/data/dataset/popular-baby-names/resource/5e58668a-8150-4c0a-b17e-d55636a318be?inner_span=True)
* [Queensland (2006-2016)](https://data.qld.gov.au/dataset/top-100-baby-names)


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tatey/baby_names.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
