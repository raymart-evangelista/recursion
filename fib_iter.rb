def fibs(num, arr = [])
  idx = 0
  while idx < num do
    if idx == 0
      arr.push(0)
    elsif idx == 1
      arr.push(1)
    else
      arr.push(arr[-2]+arr[-1])
    end
    idx += 1
  end
  arr
end

def fibs_rec(n, result = 0)
  n <= 2 ? 1 : fibs_rec(n-1) + fibs_rec(n-2)
end

p fibs_rec(7)

# fibs(1) -> 0
# fibs(2) -> 0, 1
# fibs(3) -> 0, 1, 1
# fibs(4) -> 0, 1, 1, 2
# fibs(5) -> 0, 1, 1, 2, 3
# fibs(6) -> 0, 1, 1, 2, 3, 5
# fibs(7) -> 0, 1, 1, 2, 3, 5, 8
# fibs(8) -> 0, 1, 1, 2, 3, 5, 8, 13

# p fibs(8)

# define a recursive function that returns the fib value of that position
def fib(n)
  if n == 0
    p 0
  elsif n == 1
    p 1 + fib(n-1)
  else
    p fib(n-1) + fib(n-2)
  end
end

# fib(4)
