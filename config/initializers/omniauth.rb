Rails.application.config.middleware.use OmniAuth::Builder do
  provider :foursquare, "CHMMF54KFEVAHVDCGWUH1QQ3T5O1WCYNR3N3EQ22A2YHR4KZ", "PFC2T5GCSIACB3Z5OOK2APSLYVRDAMSS4D2DXYSR5ZR4D13N", {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
end
