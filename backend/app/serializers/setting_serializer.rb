class SettingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :summary, :stories
end
