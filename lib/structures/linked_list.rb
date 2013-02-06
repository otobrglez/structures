class LinkedList



  def initialize
    @current, @size = nil, 0
  end

  def current
    @current
  end

  def size; @size || 0 end

  def add item
    @size += 1
    @node = Node.new(item)
    @node.previous = @current
    @current = @node
    @current.item
  end

  def each &block
    return nil if self.current.nil?

    current = self.current
    while(not current.nil?) do
      block.call current
      current = current.previous
    end
  end

  def at index=0
    big_size, i = self.size, 0
    self.each do |node|
      i = i +1
      return node.item if big_size-index == i
    end

    nil
  end

  def remove_at index=0
    # If it was found reduce size
    @size -= 1

    "CCC"
  end

  class Node
    attr_accessor :item, :previous
    def initialize item
      @item = item
    end

    def to_s; @item.to_s end
  end


end
