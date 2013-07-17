class Tree
  attr_accessor :value
  attr_accessor :children
  attr_accessor :parent
  def initialize(value = nil, parent = nil)
    @value = value
    @parent = parent
    @children = nil
  end

  def addChild(value)
    @children == nil and @children = []
    @children << Tree.new(value, self)
  end

  def removeFromParent
    arr = @parent.children; i = 0
    arr.length == 1 ? @parent.children = nil : while i < arr.length do arr[i] == self ? arr.delete(arr[i]) : i+=1 end
  end

  def contains?(value)
    true if self.value == value
    @children.any? { |node| node.value == value or node.contains?(value) } if self.children
  end
end