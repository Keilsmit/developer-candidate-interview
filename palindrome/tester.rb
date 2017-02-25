class Tester
  class T1
    def palindrome?(string)
      # first implementation
      if string.length == 1 || string.length == 0
        true
      else
        if string[0] == string[-1]
          palindrome?(string[1..-2])
        else
          false
        end
      end
    end
  end


  class T2
    def palindrome?(string)
      # second implementation
      if string.reverse == string
        true
      else
        false
      end
    end
  end


end
