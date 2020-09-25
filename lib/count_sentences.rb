require 'pry'

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
    split_array = self.split(/\.|\?|\!/)
    new_array = split_array.reject{|x| x.empty?}
    new_array.count
  end
  
  
end