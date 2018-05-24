class Raindrops
  def conversion(num)
    n = [['Pling', 3], ['Plang', 5], ['Plong', 7]]
    answer = n.reduce(''){ |acc, item| num % item[1] == 0 ?  acc + item[0] : acc}
    answer.empty? ? (print num.to_s) : (print answer)
  end
end
