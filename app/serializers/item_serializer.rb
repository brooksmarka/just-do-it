class ItemSerializer < ActiveModel::Serializer
  attributes :id, :body

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
