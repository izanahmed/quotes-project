class AddquoteController < ApplicationController
  def new
    if session[:user_id]
      @quote = Quote.new
      @user = User.find_by(id: session[:user_id])
    else
      redirect_to login_path
    end
  end
  
  def create
    @user = User.find_by(id: session[:user_id])
    @quote = Quote.new(quote_params)
    @quote.username = @user.email
    @quote.save
    redirect_to allquotes_path
  end
  
  private
  def quote_params
    params.require(:quote).permit(:name, :desc)
  end
end