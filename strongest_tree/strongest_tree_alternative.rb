class NullNode
  def height
    -1
  end
end


class Node
  attr_accessor :r_node, :l_node
  
  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node || NullNode.new
    self.l_node = l_node || NullNode.new
  end

  def height
      rNode = self.r_node.height
      lNode = self.l_node.height
      [rNode, lNode].max + 1
  end
end
