class UsersController < ApplicationController
  before_action :authorize, except: [:login, :create]

  def create
    puts user_params
    user = User.new(user_params)

    if user.save
      render json: { status: 200, message: "ok" }
    else
      render json: { status: 422, user: user.errors }
    end
  end

  def show
    render json: { status: 200, user: current_user }
  end

  def login
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      token = token(user.id, user.email)

      render json: { status: 201, user: user, token: token }
    else
      render json: { status: 401, message: "authorized" }
    end
  end

  private

  def token(id, email)
    JWT.encode(payload(id, email), 'bestsecretever', 'HS256')
  end

  def payload(id, email)
    {
      exp: (Time.now + 1.day).to_i,
      iat: Time.now.to_i,
      iss: 'wdir-matey',
      user: {
        id: id,
        email: email
    }
  }
  end

  def user_params
    params.required(:user).permit(:username, :email, :password)
  end

end
