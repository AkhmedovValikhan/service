class Authentication < Authlogic::Session::Base
  authenticate_with Account
