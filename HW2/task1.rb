
  def stockList(arr, arr_2)
    arr_2_uniq = arr_2.uniq
    print "Дано : #{arr}"
    new_array = Array.new
    for el in arr
           firstCharakter =  el[0].to_s  #search First Letter
           lastCharakter = el[/\d+/].to_i # search number
            a = [firstCharakter,lastCharakter] #creat array with First Letter and number
            n = new_array.push(a) # creat Multidimensional Arrays
    end
     print "\nНовий : #{array_letters_flatten =  n}"
    print "\nВідсортований : #{array_with_uniq_letters = array_letters_flatten.group_by(&:first).map { |k,v|
      [k, v.map(&:last).reduce(:+)]
    }}"

    print ("\nПошук за  : #{arr_2_uniq} \n")
    print ("Результат: ")
    arr_2_uniq.each do |key_arr_2| #find letters second array
      print "(#{key_arr_2}"
      array_with_uniq_letters.each do |key,value|  #find first letter and number
        if   key == key_arr_2 # looking for the same letters
            print  " : #{value}) -  "
        end
      end
    end

end
stockList(["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"],["A", "B"])
