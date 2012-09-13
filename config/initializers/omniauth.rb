Rails.configuration.DAILYCRED_CLIENT_ID = "c6f428f1-5786-43c0-ac09-72c89ef40496"
Rails.configuration.DAILYCRED_SECRET_KEY = "c0d792f2-a04d-489d-b791-d731c85ab230-1176ba3a-0b95-4d3c-9e21-5c597697e294"

dc_id = Rails.configuration.DAILYCRED_CLIENT_ID
dc_secret = Rails.configuration.DAILYCRED_SECRET_KEY

dc_options = { :client_options => {} }

if File.exists?('/etc/ssl/certs')
  dc_options[:client_options][:ssl] = { :ca_path => '/etc/ssl/certs'}
end
if File.exists?('/opt/local/share/curl/curl-ca-bundle.crt')
  dc_options[:client_options][:ssl] = { :ca_file => '/opt/local/share/curl/curl-ca-bundle.crt' }
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dailycred, dc_id, dc_secret, dc_options
end

Rails.application.config.middleware.use "Dailycred::Middleware", dc_id