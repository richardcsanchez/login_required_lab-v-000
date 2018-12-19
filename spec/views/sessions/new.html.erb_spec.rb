require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  it "shows login link if not logged in" do
    session[:name] = nil
    render :template => 'application/hello.html.erb'
    expect(rendered).to include '/login'
  end
  
end
