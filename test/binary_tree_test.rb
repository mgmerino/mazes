require 'minitest/autorun'
require_relative '../grid'
require_relative '../binary_tree'

class BinaryTreeTest < Minitest::Test
  def test_binary_tree_creation
    grid = Grid.new(2, 2)
    BinaryTree.on(grid)
    assert grid
  end
end