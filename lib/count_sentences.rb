require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    if (self.empty?)
      return 0
    end
    tmparry = self.split(/[!?.]/)
    tmparry.delete("")
    return tmparry.count
  end
end
