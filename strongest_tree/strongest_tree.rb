class Node
  attr_accessor :r_node, :l_node
  
  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end

  def height
    if(self.r_node === nil and self.l_node === nil)
      return 0
    else
      rNode = self.r_node ? self.r_node.height : 0
      lNode = self.l_node ? self.l_node.height : 0
      return 1 + [rNode, lNode].max 
    end
  end
end
