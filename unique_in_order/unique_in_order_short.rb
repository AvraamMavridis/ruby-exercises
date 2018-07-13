def unique_in_order(iterable)
  iterable = iterable.chars if iterable.is_a?(String)
  iterable.chunk { |x| x }.map(&:first)
end
