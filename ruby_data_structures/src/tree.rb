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

  # def removeFromParent
  #   arr = @parent.children
  #   i = 0
  #   if arr.length == 1
  #     arr = nil
  #   else
  #     while i < arr.length do
  #       arr[i] == self ? arr.delete(arr[i+=1]) : i+=1
  #     end
  #   end
  # end

end