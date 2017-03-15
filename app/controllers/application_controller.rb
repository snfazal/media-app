class ApplicationController < ActionController::API
  # is the user logged in
  def authenticate
    puts 'authenticate'
    render json: {status: 401, message: "authorized"} unless decode_token(bearer_token)
  end

  def test
    puts "MADE"
  end

  # does the user own the resource they're asking for
  def authorize
    render json: {status: 401, message: "unauthorized"} unless current_user.id == params[:id].to_i
  end

  def authorize_media
    puts current_user.id
    render json: {status: 401, message: "unauthorized"} unless current_user.id == params[:user_id].to_i
  end

  def bearer_token
    pattern = /^Bearer /
    header  = request.env["HTTP_AUTHORIZATION"] # <= env
    header.gsub(pattern, '') if header && header.match(pattern)
  end

  def current_user
    return if !bearer_token

    decoded_jwt = decode_token(bearer_token)

    @current_user ||= User.find(decoded_jwt["user"]["id"])
  end

  def decode_token(token)
    @token ||= JWT.decode(token, nil, false)[0] # error if the token is invalid or expired
  rescue
    render json: {status: 401, message: 'invalid or expired token'}
  end
end
