Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'A user that uses themarketplace'
  # http://www.rubydoc.info/gems/graphql/1.7.13/GraphQL/ScalarType
  # types is an instance of GraphQL::Definition::TypeDefiner; .String, .Float,
  # etc are methods which return built-in scalars.
  field :id, !types.ID
  field :email, !types.String
  field :phone, !types.String
  field :first_name, !types.String
  field :last_name,  !types.String
  field :address,    !types.String
  field :position,   RGeo::Feature::Point
  field :birthdate,  Types::DateTimeType
  field :last_seen, Types::DateTimeType
  field :gender, GenderEnum
end
