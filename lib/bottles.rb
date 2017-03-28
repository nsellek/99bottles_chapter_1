class Bottles

  def song
    verses 99, 0
  end

  def verse count
    bottle_line count
  end

  def verses start, finish
    lines = ""
    start.downto(finish) do |count|
      lines += bottle_line count
      lines += "\n" unless count == finish
    end
    lines
  end

  def bottle_line count
    if count > 1
      "#{count} #{beers count} of beer on the wall, #{count} #{beers count} of beer.\n" +
      "Take one down and pass it around, #{count - 1} #{beers count - 1} of beer on the wall.\n"
    elsif count == 1
      "#{count} #{beers count} of beer on the wall, #{count} #{beers count} of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def beers count
    if count > 1
      "bottles"
    elsif count == 1
      "bottle"
    else
      "no more bottles"
    end
  end

end
