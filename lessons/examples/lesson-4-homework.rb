# German
## Überprüfen ob ein Wort im Wörterbuch vorhanden ist
def key_exists?(key, dictionary)
  dictionary[key] != nil
end

## Ein Wortpaar zum Wörterbuch hinzufügen
def add_pair(key, value, dictionary)
  return "Kein Teil vom Wortpaar darf leer sein" if key.nil? || value.nil?
  return "Das Wort " + key + " existiert bereits" if key_exists?(key, dictionary)

  dictionary[key] = value
  puts value.to_s + " wurde dem Wörterbuch unter " + key.to_s + " hinzugefügt."
  dictionary
end

## Wie viele Wortpaare sind im Wörterbuch?
def count_pairs(dictionary)
  dictionary.count
end

# English
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
