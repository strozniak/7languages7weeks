class Tree
  attr_reader :root

  def initialize(root={})
    @root = root
  end

  def visitAll(&block)
    visit &block
    @root.each_pair { |key, value| Tree.new(value).visitAll &block }
  end

  def visit(&block)
    block.call @root.flatten.at(0)
  end
end

myTree = Tree.new({'stefan' => {'michael' => {'romny'=>{}}, 'roza'=>{}}})
myTree.visitAll {|name, children| puts "#{name}" }