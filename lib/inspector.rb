class Inspector

  def fshift(lst)
    [lst[0], lst[1..-1]]
  end

  def sum(lst)

    # base case
    return 0 if lst.empty?
    head, rest = fshift(lst)
    head + sum(rest)
  end

  def max(lst, current_highest = 0)
    return current_highest if lst.empty?
    head, rest = fshift(lst)
    max(rest, head > current_highest ?  head : current_highest)
  end

  def square(lst)
    return [] if lst.empty?
    head, rest = fshift(lst)
    [head * head, square(rest)].flatten
  end

  def reverse(lst)
    return [] if lst.empty?
    head,rest = fshift(lst)
    reverse(rest).push(head)
  end



end
