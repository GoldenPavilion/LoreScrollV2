class SettingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :summary, :stories, :characters
end
