class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :role, :age, :gender, :species, :job, :physical, :personality, :history, :motivation
end
