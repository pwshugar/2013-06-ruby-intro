class LinkedList
  attr_accessor :head
  attr_accessor :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def addToTail(value)
    newTail = Node.new(value)
    oldTail = @tail
    if @tail
      @tail.next = newTail
      @tail = newTail
      newTail.previous = oldTail
    else @head = @tail = newTail
    end
  end

  def addToHead(value)
    newHead = Node.new(value)
    oldHead = @head
    if @head
      @head.previous = newHead
      @head = newHead
      newHead.next = oldHead
    else @head = @tail = newHead
    end
  end

  def contains?(value, node = @head)
    node.value == value ? true : node.next != nil ? self.contains?(value, node.next) : false
  end

  def removeHead
    if @head != nil
      @head = @head.next
      @head.previous = nil
    end
  end

  def removeTail
    if @tail != nil
      @tail = @tail.previous
      @tail.next = nil
    end
  end
end

class Node
  attr_accessor :value
  attr_accessor :next
  attr_accessor :previous
  def initialize(value)
    @value = value
    @next = nil
    @previous = nil
  end
end