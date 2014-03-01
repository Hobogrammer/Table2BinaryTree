require 'minitest/autorun'
require 'minitest/spec'

def create_tree
  b = Tree.new("b")
  g = Tree.new("g")
  f = Tree.new("f", b, g)
  a = Tree.new("a")
  b.left = a
  d = Tree.new("d")
  b.right = d
  c = Tree.new("c")
  e = Tree.new("e")
  d.left = c
  d.right = e

  h = Tree.new("h")
  i = Tree.new("i", h)
  g.right = i

  return f
end
