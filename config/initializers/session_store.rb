# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pictures_session',
  :secret      => '0824ad900e9b06a089445d654f2bd80b40ff51704fdb95b5bd93fab561472f0750ab13fb98cf397d8fa34e3b59dde18699093a11bc5f43b87a8815ab4f6b30ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
