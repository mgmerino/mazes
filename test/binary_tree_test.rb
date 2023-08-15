require 'minitest/autorun'
require_relative '../models/grid'
require_relative '../models/binary_tree'

class BinaryTreeTest < Minitest::Test
  def setup
    srand(12345) # Set a fixed seed
  end
  
  def test_generates_maze_for_small_grid
    grid = Grid.new(2, 2)
    BinaryTree.on(grid)
    
    # Check specific cell linkages based on binary tree algorithm
    assert(grid[1, 1].linked?(grid[0, 1]))
    assert(grid[1, 1].linked?(grid[1, 0]))
  end
  
  def test_generates_maze_without_invalid_linkages
    grid = Grid.new(4, 4)
    BinaryTree.on(grid)
    
    # Check that cells are only linked in valid directions
    assert(grid[1, 1].linked?(grid[1, 2]) || grid[1, 1].linked?(grid[2, 1]))
    assert(grid[3, 3].linked?(grid[3, 2]) || grid[3, 3].linked?(grid[2, 3]))
  end
end
