require_relative 'models/grid'
require_relative 'models/binary_tree'

grid = Grid.new(9, 9)
BinaryTree.on(grid)
puts grid

img = grid.to_png
img.save "output/maze.png"
