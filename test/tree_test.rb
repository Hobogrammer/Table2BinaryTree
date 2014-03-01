require 'test_helper'
require 'tree'

describe "In order tree traversal" do
  it "should return A,B,C,D,E,F,G,H,I for F,B,A,D,C,E,G,I,H" do
    root = create_tree

    list = traverse(root,"in_order_traverse")

    list.must_equal "a,b,c,d,e,f,g,h,i,"
  end
end

describe "Post order tree traversal" do
  it "should return A,C,E,D,B,H,I,G,F for F,B,A,D,C,E,G,I,H" do
    root = create_tree

    list = traverse(root,"post_order_traverse")

    list.must_equal "a,c,e,d,b,h,i,g,f,"
  end
end

describe "Pre order tree traversal" do
  it "should return F,B,A,D,C,E,G,I,H for F,B,A,D,C,E,G,I,H" do
    root = create_tree

    list = traverse(root,"preorder_traverse")

    list.must_equal "f,b,a,d,c,e,g,i,h,"
  end
end
