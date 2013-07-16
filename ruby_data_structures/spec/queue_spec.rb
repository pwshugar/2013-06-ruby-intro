require '../src/queue.rb'

describe Queue do
  before(:each) do
    @queue = Queue.new
  end

  it "initializes empty" do
    @queue.length.should == 0
  end

  describe "#add" do
    it "should add the first item correctly" do
      @queue.add('hi')
      @queue.length.should == 1
    end

    it "should add other items correctly" do
      @queue.add('first item')
      @queue.add('second item')
      @queue.length.should == 2
    end
  end

  describe "#remove" do
    it "should remove items" do
      @queue.add('first item')
      @queue.length.should == 1
      @queue.remove
      @queue.length.should == 0
    end

    it "should remove the last item" do
      @queue.add('first item')
      @queue.add('second item')
      @queue.remove.should == 'first item'
      @queue.remove.should == 'second item'
    end
  end
end