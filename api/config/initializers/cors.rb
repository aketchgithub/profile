Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'http://127.0.0.1:5500', 'http://localhost:3000'
        # Update this with the appropriate origin URLs
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'] # Add any additional headers you want to expose
    end


end
  