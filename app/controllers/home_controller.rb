class HomeController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    quote_count = Quote.all.count
    num = (1..quote_count).to_a.shuffle.first
    @quote = Quote.find_by(id: num)
    @result = @quote.desc
    input = @quote.username
    d = ""
    input.split('').each { |c| 
      if c == '@'
        break
      else
        d += c
      end
    }
    @author = d
  end
  
  def about
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    
  end

  def profile
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    @quotes = Quote.where(["username = ?", @user.email])
  end
end