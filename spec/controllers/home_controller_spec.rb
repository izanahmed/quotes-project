require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  
  describe "GET root" do #success response
    it "renders a successful response" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  
  describe "GET past" do #success response
    it "renders a successful response" do
      get :past
      expect(response.status).to eq(200) 
    end
  end
  
  describe "GET future" do #success response
    it "renders a successful response" do
      get :future
      expect(response.status).to eq(200)  
    end
  end
  
  
  describe "GET future index" do # valid future index
    it "renders a valid index" do
      get :future
      expect(assigns(:num)).to be <= 3
    end
  end
    
  # creating Failed Tests to see if it works correctly. Uncomment below and run
  
  #describe "GET future" do
  #  it "renders a successful response" do
  #    get :futuress
  #    expect(response.status).to eq(200)  
  #  end
  #end
  
end