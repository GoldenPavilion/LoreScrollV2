class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :penname, :stories, :settings
end
