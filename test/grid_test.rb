require 'minitest/autorun'
require_relative '../grid'

class GridTest < Minitest::Test
  def test_grid_initialization
    grid = Grid.new(2, 2)
    assert grid.rows == 2
    assert grid.columns == 2
  end
end