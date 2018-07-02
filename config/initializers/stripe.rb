if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_live_N2hTIokN9eYu9oafQlDAE9rH',
    secret_key: 'sk_live_jfaHGqFRjwHjxZ2XfbThH3ZP'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]