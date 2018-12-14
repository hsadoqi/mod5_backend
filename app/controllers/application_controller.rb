class ApplicationController < ActionController::API

    # def issue_token(payload)
    #     JWT.encode(payload, 'SECRET')
    # end 

    # def decode_token(payload)
    #     JWT.decode(get_token, 'SECRET')
    # end

    # def get_token
    #     request.authorization 
    # end 

    # def current_user 
    #     User.find_by(decode_token['id'])
    # end

    # def logged_in
    #     !!current_user
    # end
end
