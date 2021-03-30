## Basic solution
def calculcate_width(diagonal, ratio_width, ratio_height)
  # Calculate squared hypotenuse
  squared_ratio_diagonal = ratio_width**2 + ratio_height**2

  # Calculate proportion
  proportion = diagonal/Math.sqrt(squared_ratio_diagonal)

  # transform ratio into unit of length
  puts proportion * ratio_width
end

calculcate_width(32 ,16, 9)

## Bonus 1

## with transform from inch to centimeter
def calculcate_width(diagonal, ratio_width, ratio_height)
  # Calculate squared hypotenuse
  squared_ratio_diagonal = ratio_width**2 + ratio_height**2

  # Calculate proportion
  proportion = diagonal/Math.sqrt(squared_ratio_diagonal)

  # transform ratio into unit of length
  puts (proportion * ratio_width) * 2.54
end

calculcate_width(32 ,16, 9)

## Bonus 2

# with a count of monitor
def calculcate_width(diagonal, ratio_width, ratio_height, monitor_count)
  # Calculate squared hypotenuse
  squared_ratio_diagonal = ratio_width**2 + ratio_height**2

  # Calculate proportion
  proportion = diagonal/Math.sqrt(squared_ratio_diagonal)

  # transform ratio into unit of length
  puts ((proportion * ratio_width) * 2.54) * monitor_count
end

calculcate_width(32 ,16, 9, 2)
