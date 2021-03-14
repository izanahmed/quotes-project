class AddquoteController < ApplicationController
  def new
    @quote = Quote.new
  end
  
  def create
    @quote = Quote.create(quote_params)
    redirect_to allquotes_path
  end
  
  private
  def quote_params
    params.require(:quote).permit(:name, :desc)
  end
end