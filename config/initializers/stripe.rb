require "stripe"

Rails.configuration.stripe = {
  :publishable_key => 'pk_test_7vgkRwL6mtHzRm6Byop6fw3W',
  :secret_key      => 'sk_test_uN758CfckkCKJJVhtfN7lZ8u'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

