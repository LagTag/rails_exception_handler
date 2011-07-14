

describe RailsExceptionHandler::Configuration do
  describe ".initialize" do
    before(:each) do
      @configuration = RailsExceptionHandler::Configuration.new
    end

    it "should add :production to environments" do
      @configuration.environments.should == [:production]
    end

    it "should set storage_strategies to []" do
      @configuration.storage_strategies.should == []
    end
    
    it "should set ignore_routing_errors to false" do
      @configuration.ignore_routing_errors.should == false
    end

    it "should set the 404 response" do
      @configuration.responses['404'].should match(/Page not found/)
    end

    it "should set the 500 response" do
      @configuration.responses['500'].should match(/An error has occurred/)
    end

    it "should set the fallback layout to 'application'" do
      @configuration.fallback_layout.should == 'application'
    end

    it "should set ignore_crawlers to false" do
      @configuration.ignore_crawlers.should == false
    end
  end
end