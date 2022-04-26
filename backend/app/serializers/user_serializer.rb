class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :penname
end
