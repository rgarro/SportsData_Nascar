SportsData_Nascar
=================

A ruby client for SportsData Nascar api 



## Getting started

A ruby module that works with Rails 3.2.8 . Add to your Gemfile:


gem 'nokogiri'
gem 'nori','2.3.0'

open config/application.rb
set config.autoload_paths += %W(#{config.root}/lib)
copy sports_data.rb to your lib/modules directory


include it on your controller 

## Example
```ruby
class PublicController < ApplicationController
  include Modules::SportsData
  
  def home
    @auto_test = Nascar.auto_test
  end

end
```

## Available Instance Methods

     *schedule
 
     * race_leaderboard
     
     * qualifying_race_leaderboard
     
     * standings
     
     * drivers
     
     * entry_list
     
     * starting_grid
     
     * tracks
## See

http://developer.sportsdatallc.com/docs/read/Nascar_API


## License

MIT License. Copyright 2009-2014 TilapyaWebshop. http://tilapya-11303.herokuapp.com/    

## Notes
Free Tibet!! Keep The Ride .... 