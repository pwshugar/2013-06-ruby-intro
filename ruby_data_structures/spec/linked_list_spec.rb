require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linkedList = LinkedList.new
  end

  it 'should initialize with no head or tail' do
    @linkedList.head.should == nil
    @linkedList.tail.should == nil
  end

  # describe 'something' do
  #   it 'something something' do
  #     #blah
  #   end
  #   it 'something something' do
  #     #blah
  #   end
  # end




end