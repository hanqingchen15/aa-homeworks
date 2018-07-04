class House < ActiveRecord::Base
  has_many :people,
    primary_key: :id,
    foreign_key: :house_id,person = Person.new(name: 'Walter White', house_id: house.id)

    class_name: 'Residents'
end
