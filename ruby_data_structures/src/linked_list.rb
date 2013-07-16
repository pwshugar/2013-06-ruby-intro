class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end
  def head
    @head
  end
  def tail
    @tail
  end
  def add(node)
    temp = @tail
    @tail = node
    node.next = temp
    if @head == nil
      @head = @tail
    end
  end
end

class Node
  def initialize(value)
    @value = value
    @next = nil
  end
  def next
    @next
  end
end