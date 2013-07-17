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
    flag = false
    def recurse(value, node)
      return true
      # if node.value == value
      #   flag = true
      # end
      # if node.children != nil
      #   i = 0
      #   while i < node.children.length
      #     puts node.children[i].value
      #     recurse(value, node.children[i])
      #     i+=1
      #   end
      # end
    end
    recurse(value, self)
    return flag
  end


end