require 'minitest/autorun'
require_relative '../models/grid'

class GridTest < Minitest::Test
  def test_grid_initialization
    grid = Grid.new(2, 2)
    assert_equal grid.rows, 2
    assert_equal grid.columns, 2
    assert_equal grid.size, 4 

    assert grid.random_cell.is_a?(Cell)
    assert grid[0, 0].is_a?(Cell)
    assert grid[grid.rows+1, grid.columns+1].nil?
  end
end