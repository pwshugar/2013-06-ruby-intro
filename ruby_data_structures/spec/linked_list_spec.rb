require '../src/linked_list.rb'

describe LinkedList do
  before(:each) do
    @linkedList = LinkedList.new
  end

  it 'should initialize with no head or tail' do
    @linkedList.head.should == nil
    @linkedList.tail.should == nil
  end

  describe '#addToTail' do
    it 'should add a node to the tail' do
      @linkedList.addToTail('first node')
      @linkedList.head.value.should == 'first node'
      @linkedList.tail.value.should == 'first node'
    end
    it 'should be able to add a second node to tail' do
      @linkedList.addToTail('first node')
      @linkedList.addToTail('second node')
      @linkedList.head.value.should == 'first node'
      @linkedList.tail.value.should == 'second node'
      @linkedList.head.next.value.should == @linkedList.tail.value
      @linkedList.tail.previous.value.should == @linkedList.head.value
    end
  end

  describe '#addToHead' do
    it 'should add a node to the head' do
      @linkedList.addToHead('first node')
      @linkedList.head.value.should == 'first node'
      @linkedList.tail.value.should == 'first node'
    end
    it 'should be able to add a second node to head' do
      @linkedList.addToHead('second node')
      @linkedList.addToHead('first node')
      @linkedList.head.value.should == 'first node'
      @linkedList.tail.value.should == 'second node'
      @linkedList.head.next.value.should == @linkedList.tail.value
      @linkedList.tail.previous.value.should == @linkedList.head.value
    end
  end

  describe '#contains' do
    it 'should find a node in the list' do
      @linkedList.addToTail('first node')
      @linkedList.addToTail('second node')
      @linkedList.addToTail('third node')
      @linkedList.contains?('second node').should == true
      @linkedList.contains?('fourth node').should == false
    end
  end

  describe '#removeHead' do
    it 'should remove the head from a list' do
      @linkedList.addToTail('first node')
      @linkedList.addToTail('second node')
      @linkedList.removeHead
      @linkedList.head.value.should == 'second node'
      @linkedList.tail.value.should == 'second node'
    end
  end

  describe '#removeTail' do
    it 'should remove the tail from a list' do
      @linkedList.addToTail('first node')
      @linkedList.addToTail('second node')
      @linkedList.removeTail
      @linkedList.tail.value.should == 'first node'
      @linkedList.head.value.should == 'first node'
    end
  end

end