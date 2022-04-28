if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_lorescrollV2', domain: 'lorescrollV2-json-api'
else
    Rails.application.config.session_store :cookie_store, key: '_lorescrollV2'
end