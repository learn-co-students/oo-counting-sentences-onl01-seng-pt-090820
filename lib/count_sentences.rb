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
    split_array.reject!{|x| x.empty?}
    split_array.count
  end
end
