# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Reddit::Application.config.secret_key_base = 'e0148643c8ca57bf26fd7fd20e0446acbf53932d1f67e15b12d9b2830aab802027dd6e187cbe57814b79f76d060ef52981c41b7d96a245e78363c3e9afd2a077'
