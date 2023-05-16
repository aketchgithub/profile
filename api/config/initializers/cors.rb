Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "*"
        # Update this with the appropriate origin URLs
  
      resource '/contact',
        headers: :any,
        methods: [:get, :post, :head],
        # expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'] # Add any additional headers you want to expose
    end


end
  