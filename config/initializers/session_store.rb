# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_citymenus_session',
  :secret      => '0942bc4acb2b960eff872423c20daeb512b57d91acebcb03bf73f81340479adf21997b5b238f96eebbbf59be911cc56b39b030c0ecfa65575f8405428885f08f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
