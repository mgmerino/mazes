require_relative 'models/distance_grid'
require_relative 'models/binary_tree'

grid = DistanceGrid.new(12, 12)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid

img = grid.to_png
img.save "output/maze_dijkstra2.png"

