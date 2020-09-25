require'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end
  
  def count_sentences
    
    counter = 0
    word_array = self.split(/\.|\?|\!/)
    #binding.pry
    word_array.each do |x|
    if x.length > 1
      counter += 1
    end
    end
    counter
  end
end
