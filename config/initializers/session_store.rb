# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_techtalk-nested-forms_session',
  :secret      => '6411494ab3f7e2ee5fc3e682658552d9e3bed7a367f29b7d2e4a82b8c8b75145b8aa410fc1b90e6758d057a2046c27ff15f49f42833e65f822866796dcbfb216'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
