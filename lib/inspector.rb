class Inspector
  def sum(values)
    case values.length
    when 0
      0
    when 1
      values.first
    else
      values.first + sum(values[1..-1])
    end
  end

  def max(values)
    case values.length
    when 0
      0
    when 1
      values.first
    when 2
      values[0] < values[1] ? values[1] : values[0];
    else
      max([values.first, max(values[1..-1])])
    end
  end

  def square(values)
    case values.length
    when 0
      values
    when 1
      [values.first * values.first]
    else
      square(values[0..0]) + square(values[1..-1])
    end
  end

  def reverse(values)
    case values.length
    when 0, 1
      values
    else
      values[-1..-1] + reverse(values[0..-2])
    end
  end

  def sort(values)
    case values.length
    when 0, 1
      values
    else
      insert(values.first, sort(values[1..-1]))
    end
  end

  private
  def insert(value, values)
    if values.length == 0
      [value]
    elsif value < values.first
      [value] + values
    else
      values[0..0] + insert(value, values[1..-1])
    end
  end
end
