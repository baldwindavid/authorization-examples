class User < Struct.new(:name, :age, :admin)

  # def can_edit?(resource)
  #   resource.editable_by? self
  # end

end
