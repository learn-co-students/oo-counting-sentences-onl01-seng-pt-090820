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
self.split(/[.!?]/).reject {|x| x.empty?}.size 
    # returns the number of sentences in a string
    # returns zero if there are no sentences in a string
    # returns the number of sentences in a complex string
  end
end