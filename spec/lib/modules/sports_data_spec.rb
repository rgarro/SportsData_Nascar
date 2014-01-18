require 'spec_helper'

describe "SportsData" do
  
  before :all do
    @nascar = Modules::SportsData::Nascar.new
  end
  
  it "should respond to class method auto_test" do
    Modules::SportsData::Nascar.should respond_to(:auto_test)
  end
  
  it "should respond to schedule" do
    @nascar.should respond_to(:schedule)
  end
  
  describe 'schedule' do
    
    before :all do
       @schedule = @nascar.schedule()
    end
    
    it "should return a hash" do
      res = @nascar.schedule()
      @schedule.class.should == Hash
    end
    
    it 'should respond to series' do
      @schedule.should have_key('series')
    end
    
    it "should have more than one serie" do
      @schedule['series'].count.should > 0 
    end
    
  end
    
  
  it "should respond to live_race_leaderboard" do
    @nascar.should respond_to(:race_leaderboard)
  end
  
  it "should respond to qualifying_race_leader_board" do
    @nascar.should respond_to(:qualifying_race_leaderboard)
  end
  
  it "should respond to standings" do
    @nascar.should respond_to(:standings)
  end
  
  it "should respond to drivers" do
    @nascar.should respond_to(:drivers)
  end
  
  it "should respond to entry_list" do
    @nascar.should respond_to(:entry_list)
  end

  it "should respond to starting_grid" do
    @nascar.should respond_to(:starting_grid)
  end  
  
  it "should respond to tracks" do
    @nascar.should respond_to(:tracks)
  end
  
end
