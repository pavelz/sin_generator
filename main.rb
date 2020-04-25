#!/usr/bin/env ruby

def check(n1, n2, n3, n4, n5, n6, n7, n8, n9)
  v = [n1, n2, n3, n4, n5, n6, n7, n8, n9]
  a = [1, 2, 1, 2, 1, 2, 1, 2, 1]
  pre_sum = []

  v.each_index do |i|
    product = v[i] * a[i]
    pre_sum[i] = product % 10 + product / 10
  end

  sum = pre_sum.inject(0) { |sum, x| sum + x }

  if sum % 10 == 0
    puts " valid : #{v.join}"
  end
end

(0..9).each do |n1|
  (0..9).each do |n2|
    (0..9).each do |n3|
      (0..9).each do |n4|
        check(7, n1, n2, n3, n4, 3, 3, 6, 5)
      end
    end
  end

end