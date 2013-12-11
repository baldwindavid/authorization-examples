class Company < Struct.new(:id, :name, :publicly_traded)

  # def editable_by?(user)
  #   publicly_traded && user.age > 20
  # end

  def to_param
    id
  end

end
