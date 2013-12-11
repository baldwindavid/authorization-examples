class Project < Struct.new(:id, :name, :active)

  # def editable_by?(user)
  #   active && user.admin
  # end

  def to_param
    id
  end

end
