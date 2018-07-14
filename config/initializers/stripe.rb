if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_PX6unX3vRFqtYlrm9MfNTbzL',
    secret_key: 'sk_test_LS08ffKkIQmJ5lHlivIhhNQ3'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]