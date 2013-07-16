class Queue
  def initialize
    @length = 0
    @queue = []
  end
  def length
    @length
  end
  def add(obj)
    @queue[@length] = obj
    @length += 1
  end
  def remove
    unless @length == 0
      @length -= 1
      @queue.shift
    end
  end
end