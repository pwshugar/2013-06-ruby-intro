class Tree
  attr_accessor :value
  attr_accessor :children
  attr_accessor :parent
  def initialize(value = nil, parent = nil)
    @value = value
    @children = nil
    @parent = nil
  end

  def addChild(value)
    @children == nil and @children = []
    @children << Tree.new(value, self)
  end
end