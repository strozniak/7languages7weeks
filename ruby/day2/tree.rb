class Tree
  attr_reader :name, :children

  def initialize(name, children)
    @name = name
    @children = children
  end

  def visitAll(&block)

  end
end