class Inspector
  def sum(input)
    return 0 if input.empty?
    input[0] + sum(input[1..-1])
  end

  def max(input)
    return 0 if input.empty?
    (input[0] > max(input[1..-1])) ? input[0] : max(input[1..-1])
  end

  def square(input)
    return input if input.empty?
    [input[0]*input[0]] + square(input[1..-1])
  end

  def reverse(input)
    return input if input.empty?
    reverse(input[1..-1]) + [input[0]]
  end

  def sort(input)
    return input if input.size < 2
    return (input[0] < input[1]) ? input : reverse(input) if input.size == 2
    sort(input[0...input.index(max(input))] + input[input.index(max(input))+1..-1]) + [max(input)]
  end
end