require 'active_support/all'


class Question
attr_reader :val1, :val2

  def initialize
     @val1 = rand(1..10)
     @val2 = rand(1..10)
  end

  def get_ans
    self.val1 + self.val2
  end

end