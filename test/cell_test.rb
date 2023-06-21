require 'minitest/autorun'
require_relative '../cell'

class CellTest < Minitest::Test
  def test_cell_initialization
    cell = Cell.new(0, 0)
    assert cell.row == 0
    assert cell.column == 0
  end

  def test_cell_linking
    cell1 = Cell.new(0, 0)
    cell2 = Cell.new(0, 1)
    cell1.link(cell2)
    assert cell1.linked?(cell2)
    assert cell2.linked?(cell1)
  end

  def test_cell_unlinking
    cell1 = Cell.new(0, 0)
    cell2 = Cell.new(0, 1)
    cell1.link(cell2)
    cell1.unlink(cell2)
    refute cell1.linked?(cell2)
    refute cell2.linked?(cell1)
  end
end
