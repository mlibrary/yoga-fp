class Inspector
  def sum(input)
    return 0 if input.empty?
    input[0] + sum(input[1..-1])
  end

  def max(input)
    return 0 if input.empty?
    head = input[0]
    rest = max(input[1..-1])
    (head > rest) ? head : rest
  end

  def square(input)
    return input if input.empty?
    square(input[1..-1]).unshift input[0]*input[0]
  end

  def reverse(input)
    return input if input.empty?
    reverse(input[1..-1]) << input[0]
  end

  def sort(input)
    return input if input.empty?
    return input if input.size == 1
    return (input[0] < input[1]) ? input : reverse(input) if input.size == 2
    head = input[0]
    rest = input[1..-1]
    (head >= rest[0])  ? rest.unshift(input[0]) : rest << input[0]
  end
end