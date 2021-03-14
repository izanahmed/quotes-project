class AllquotesController < ApplicationController
  def manyquotes
    all_quotes = Quote.all
    @quotes = all_quotes
  end
end