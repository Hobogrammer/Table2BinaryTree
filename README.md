Table to Binary Tree
====
Task
--
 Turn this:

<table>
  <tr>
    <th>Name</th>
    <th>Report 1</th>
    <th>Report 2</th>
  </tr>
  <tr>
    <td>Tim</td>
    <td>Jony</td>
    <td>Phil</td>
  </tr>
  <tr>
    <td>Phil</td>
    <td>Craig</td>
    <td>Eddie</td>
  </tr>
  <tr>
    <td>Jony</td>
    <td>Dan</td>
    <td>Katie</td>
  </tr>
  <tr>
    <td>Katie</td>
    <td>Peter</td>
    <td>Andrea</td>
  </tr>
</table>

Into a nice Binary Tree.

Usage
---

### Creating trees

Trees can be created using the `Tree.new(value,left,right)` syntax. Assigning the left and right parameters is optional and will default to nil if not assigned. You can simply use `tree_name.left = another_tree` if you want to assign left or right values later.

### Traversing

There are three ways to depth-first traverse a binary tree. In order to traverse the tree , use `tree_obj.traverse(root_tree, "traveral method")`, where `"traversal method"` is either `in_order_traversal`, `preorder_traversal` or `in_order_traversal` input as strings.

### Example output

````
------- Pre Order --------
Tim,Jony,Dan,Katie,Peter,Andrea,Phil,Craig,Eddie,
------- In Order --------
Dan,Jony,Peter,Katie,Andrea,Tim,Craig,Phil,Eddie,
------- Post Order --------
Dan,Peter,Andrea,Katie,Jony,Craig,Eddie,Phil,Tim,
````

