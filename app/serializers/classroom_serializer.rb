class ClassroomSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  embed :ids, include: true
end
