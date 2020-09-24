require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else 
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else 
      false
    end
  end

  def count_sentences
    arr = self.split(" ")
    num = 0
    arr.each {|item| 
      if item.end_with?(".", "?", "!") 
      num += 1 end 
    }
    num
  end
end