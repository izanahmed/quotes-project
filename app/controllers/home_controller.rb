class HomeController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    # present=["The future depends on what you do today.", 
    #           "The present changes the past.", 
    #           "No one saves us but ourselves in this moment.", 
    #           "This time you have, cherish it, it may never come back."]
    # @num = (0..3).to_a.shuffle.first
    # @result = present[@num]
  end
  
  def past
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    # past=["The past is always tense, the future perfect.", 
    #           "The past is never where you think you left it.", 
    #           "Scars have the strange power to remind us that our past is real.", 
    #           "The past beats inside me like a second heart."]
    # @num = (0..3).to_a.shuffle.first
    # @result = past[@num]
  end
  
  def future
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    # future=["Life can only be understood backwards; but it must be lived forwards.", 
    #           "The future belongs to those who believe in the beauty of their dreams.", 
    #           "The secret of your future is hidden in your daily routine.", 
    #           "Destiny is no matter of chance."]
    # @num = (0..3).to_a.shuffle.first
    # @result = future[@num]
  end
end