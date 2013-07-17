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

  describe '#removeFromParent' do
    it 'should remove a child from its parent' do
      @tree.addChild('first')
      @tree.children[0].addChild('second')
      @tree.children[0].addChild('third')      
      @tree.children[0].children[0].removeFromParent
      @tree.children[0].children[0].value.should == 'third'
      @tree.children[0].children[0].removeFromParent
      @tree.children[0].children.should == nil      
    end
  end

  describe '#contains' do
    it 'should find a node value in the tree' do
      @tree.addChild('first')
      @tree.children[0].addChild('second')
      @tree.children[0].children[0].addChild('third')
      @tree.contains?('first').should == true
      @tree.contains?('second').should == true    
      @tree.contains?('third').should == true        
      @tree.contains?('123').should == false
    end
  end

end