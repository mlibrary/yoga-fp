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

  def max(lst)
    _max(lst, 0)
  end

  def _max(lst, current_highest)
    return current_highest if lst.empty?
    head, rest = fshift(lst)
    _max(rest, head > current_highest ?  head : current_highest)
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

  def sort(lst)
    return [] if lst.empty?
    return lst if lst.size == 1

    if lst.size == 2
      return merge([lst.first], [lst.last])
    end

    midpoint = lst.size / 2
    first_half = lst[0..midpoint]
    last_half  = lst[midpoint + 1..-1]
    merge(sort(first_half), sort(last_half))
  end

  def merge(l1, l2)
    return [l1, l2].flatten if l1.empty? or l2.empty?
    if l1.size == 1 and l2.size == 1
      l1.first > l2.first ? [l2, l1].flatten : [l1, l2].flatten
    else
      merge(sort(l1), sort(l2))
    end
  end


end
