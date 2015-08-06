def recursive_fib(n)
  if n == 0
    return 0
  end
  if n == 1
    return 1
  end
    
  if n >= 2
    return recursive_fib(n-1) + (recursive_fib(n-2))
  end
end

puts recursive_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
    x.report("recursive_fib") { recursive_fib(num) }
end

    