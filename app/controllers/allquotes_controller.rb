class AllquotesController < ApplicationController
  def manyquotes
  	if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    all_quotes = Quote.all
    @quotes = all_quotes
  end
end