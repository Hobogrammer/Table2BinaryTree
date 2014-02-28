class Tree
  attr_accessor :value, :left, :right
  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def self.preorder_traverse(leaf)
    return if leaf.nil?

    puts leaf.value #Terminal swallows output from print
    preorder_traverse(leaf.left)
    preorder_traverse(leaf.right)
  end

  def self.in_order_traverse(leaf)
    return if leaf.nil?

    in_order_traverse(leaf.left)
    puts leaf.value
    in_order_traverse(leaf.right)
  end

  def self.post_order_traverse(leaf)
    return if leaf.nil?

    post_order_traverse(leaf.left)
    post_order_traverse(leaf.right)
    puts leaf.value
  end
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
Tree.preorder_traverse(root)

puts "------- In Order --------"

Tree.in_order_traverse(root)
puts "------- Post Order --------"

Tree.post_order_traverse(root)
