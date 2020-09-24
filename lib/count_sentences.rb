require 'pry'

class String

  def sentence?
    self.end_with?(".")
    # self[-1] == "."
    # self.split.last[-1] == "."
  end

  def question?
    self.end_with?("?")
    # self[-1] == "?"
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.gsub(",","").gsub("? ", ". ").gsub("! ", ". ").split(". ").count
  end
end