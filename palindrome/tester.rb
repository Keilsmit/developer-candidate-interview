class Tester
  class T1
    def palindrome?(string)
      # first implementation
      string_response = string.downcase.scan(/w/)
      string_response = string_response.reverse
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
