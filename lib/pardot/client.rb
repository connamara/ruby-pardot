module Pardot

  class Client

    include HTTParty
    base_uri 'https://pi.pardot.com'
    format :xml

    include Authentication
    include Http

    include Objects::CustomFields
    include Objects::Emails
    include Objects::Lists
    include Objects::ListMemberships
    include Objects::Opportunities
    include Objects::Prospects
    include Objects::ProspectAccounts
    include Objects::Users
    include Objects::Visitors
    include Objects::Visits
    include Objects::VisitorActivities

    attr_accessor :email, :password, :user_key, :api_key, :version, :format, :access_token, :pardot_business_unit_id

    def initialize email, password, user_key, version = 3, access_token = nil, pardot_business_unit_id = nil
      @email = email
      @password = password
      @user_key = user_key
      @version = version
      @access_token = access_token
      @pardot_business_unit_id = pardot_business_unit_id

      @format = "simple"
    end

  end
end
