Devise.setup do |config| #Replace example.com with your own domain name
    config.mailer_sender = 'balaji.d.94.it@gmail.com'
    require 'devise/orm/active_record'
    config.case_insensitive_keys = [ :email ]
    config.strip_whitespace_keys = [ :email ]
    config.skip_session_storage = [:http_auth]
    config.stretches = Rails.env.test? ? 1 : 10
    config.reconfirmable = true
    config.expire_all_remember_me_on_sign_out = true
    config.password_length = 8..128
    config.reset_password_within = 6.hours
    config.sign_out_via = :delete
    #config.allow_unconfirmed_access_for = 2.hours

    #Add your ID and secret here #ID first, secret second
    config.omniauth :facebook, "235483700193539", "cb0b54c82d8606287dc10cc1e0386fb3", scope: 'public_profile,email', info_fields: 'email,name'
    config.omniauth :github, "16f40ebaeb6636adb36f", "a37de2577c3c913b521527e6477c71c6ab7fb43e", scope: 'public_profile,email', info_fields: 'email,name'
    config.omniauth :twitter, "hOppbudH9kmgpZBILvSqKx1ad", "z7wYATV5etuwlkWLNcrH2lnCTRmb4UmRHkCoXZn1OtRvwi4Wdb", scope: 'public_profile,email', info_fields: 'email,name'

 end
