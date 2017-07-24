class Inspector
  def sum(input)
    total = 0
    unless input.empty?
      total = total + input.first + sum(input[1..-1])
    end
    return total
  end

  def max(input)
    max = 0
    unless input.empty?
      max_remaining = max(input[1..-1])
      if input.first > max_remaining
        max = input.first
      else
        max = max_remaining
      end
    end
    return max
  end


  def square(input)

  end


  def reverse(input)

  end


  def sort(input)

  end

end
