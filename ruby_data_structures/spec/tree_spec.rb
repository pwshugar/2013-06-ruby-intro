require '../src/tree.rb'

describe Tree do
  before(:each) do
    @tree = Tree.new
  end

  it 'should initialize with no parent or children' do
    @tree.children.should == nil
    @tree.parent.should == nil
  end

  describe '#addChild' do
    it 'children added to tree should have value and parent properties' do
      @tree.addChild('first')
      @tree.children[0].addChild('second')
      @tree.children[0].children[0].value.should == 'second'
      @tree.children[0].children[0].parent.value.should == 'first'
    end
  end

  # describe '#removeFromParent' do
  #   it 'should remove a child from its parent' do
  #     @tree.addChild('first')
  #     @tree.children[0].addChild('second')
  #     @tree.children[0].children[0].removeFromParent
  #     @tree.children[0].children.should == nil
  #   end
  # end

  # describe '#contains' do
  #   it 'should find a node in the list' do
  #     @linkedList.addToTail('first node')
  #     @linkedList.addToTail('second node')
  #     @linkedList.addToTail('third node')
  #     @linkedList.contains?('second node').should == true
  #     @linkedList.contains?('fourth node').should == false
  #   end
  # end

  # describe '#removeHead' do
  #   it 'should remove the head from a list' do
  #     @linkedList.addToTail('first node')
  #     @linkedList.addToTail('second node')
  #     @linkedList.removeHead
  #     @linkedList.head.value.should == 'second node'
  #     @linkedList.tail.value.should == 'second node'
  #   end
  # end

  # describe '#removeTail' do
  #   it 'should remove the tail from a list' do
  #     @linkedList.addToTail('first node')
  #     @linkedList.addToTail('second node')
  #     @linkedList.removeTail
  #     @linkedList.tail.value.should == 'first node'
  #     @linkedList.head.value.should == 'first node'
  #   end
  # end

end