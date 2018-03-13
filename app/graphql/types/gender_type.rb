GenderEnum = GraphQL::EnumType.define do
  name 'Genders'
  description 'Genders for a person'
  value('MALE', 'Identifies as a man')
  value('FEMALE', 'Identifies as a woman')
  value('OTHER', 'Identifies as another gender other than the binary ones')
end