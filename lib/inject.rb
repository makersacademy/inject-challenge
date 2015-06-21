class Array

  def injection(initial_value, operator)
      result = self[0] + self[1]
      self[0] = result
      self[1] = self[2]
      self.delete_at(2)
      if self[1] == nil
        self.delete_at(1)
        self[0]
      else
        self.injection(operator)
      end
    elsif operator == :-
      result = self[0] - self[1]
      self[0] = result
      self[1] = self[2]
      self.delete_at(2)
      if self[1] == nil
        self.delete_at(1)
        self[0]
      else
        self.injection(operator)
      end
    elsif operator == :/
      result = self[0] / self[1]
      self[0] = result
      self[1] = self[2]
      self.delete_at(2)
      if self[1] == nil
        self.delete_at(1)
        self[0]
      else
        self.injection(operator)
      end
    elsif operator == :*
      result = self[0] * self[1]
      self[0] = result
      self[1] = self[2]
      self.delete_at(2)
      if self[1] == nil
        self.delete_at(1)
        self[0]
      else
        self.injection(operator)
      end
    end
  end
end