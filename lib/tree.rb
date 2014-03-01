class Tree
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def preorder_traverse
    "#{@value}," +
      "#{(@left.preorder_traverse if @left)}" +
      "#{(@right.preorder_traverse if @right)}"
  end

  def in_order_traverse
    "#{(@left.in_order_traverse if @left)}" +
      "#{@value}," +
      "#{(@right.in_order_traverse if @right)}"
  end

  def post_order_traverse
    "#{(@left.post_order_traverse if @left)}" +
      "#{(@right.post_order_traverse if @right)}" +
      "#{@value},"
  end
end

def traverse(root,method)
  list = []
  list << root.send(method.to_sym)
  list[0]
end

root = Tree.new("Tim")
first = Tree.new("Jony")
root.left = first
second = Tree.new("Dan")
first.left = second
third = Tree.new("Katie")
first.right = third
fourth = Tree.new("Peter")
third.left = fourth
fifth = Tree.new("Andrea")
third.right = fifth
sixth = Tree.new("Phil")
root.right = sixth
seventh = Tree.new("Craig")
sixth.left = seventh
eigth = Tree.new("Eddie")
sixth.right = eigth

puts "------- Pre Order --------"

puts pre_order = traverse(root,"preorder_traverse")

puts "------- In Order --------"

puts in_order = traverse(root,"in_order_traverse")

puts "------- Post Order --------"

puts post_order = traverse(root, "post_order_traverse")
