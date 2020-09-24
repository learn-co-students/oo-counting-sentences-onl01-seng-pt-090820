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
    na = []
    na = self.split(/\.|\?|\!/)
    na.delete_if do |x|
      x == ""
    end
    na.count
  end
  
end