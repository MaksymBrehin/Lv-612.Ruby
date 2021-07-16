def perimeter(n)
      perimeter = 0
      number = [0, 1]
      for el in 2..n + 1
        p number.append( number[el-1] + number[el-2] )
        perimeter = (number) * 4
      end
      p perimeter
      sum = 0
      for el in perimeter
        sum += el
      end
      p sum
end

perimeter(7)
perimeter(5)
