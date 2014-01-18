module Modules
  
  # FAST AS FAST IS II
  #
  # Darkness in a blink
  # engine mantra roaring storm
  # gray evening raindrops
  #
  # @author Rolando Garro <rgarro@gmail.com>
  #
  module SportsData
    # endless road glimpses
    # lost driver in a thought wheel
    # reached sound speed limit
    #
    
    class Nascar
      
      require 'nokogiri'        
      require 'open-uri'
      require 'active_support/core_ext/hash/conversions'
      
      @@init_msg = "driving like hell sparks ..."
      
      def get_api_key
        #your api key
        'a7jec3dk7w2ff49dramn8fe2'
      end
      # gazing fullmoon bliss
      # brakeless illussions behind
      # a vanishing point
      # 
      # use it to test if correctly included
      # @param void
      # @return string
      def self.auto_test
        @@init_msg  
      end
      
      # provides detailed information regarding all events associated with the series’ season
      #
      #@param year
      #
      def schedule(year='2014')
        Hash.from_xml(Nokogiri::XML(open("http://api.sportsdatallc.org/nascar-t2/sc/"+year+"/races/schedule.xml?api_key="+get_api_key()).read).to_s)         
      end 
      
      def race_leaderboard
        
      end
      
      def qualifying_race_leaderboard
        
      end
      
      def standings
        
      end
      
      def drivers
        
      end
      
      def entry_list
        
      end
      
      def starting_grid
        
      end
      
      def tracks
        
      end
      
    end
  end
end