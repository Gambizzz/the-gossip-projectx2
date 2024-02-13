class GossipsController < ApplicationController
  def new

  end

  def create
    city = City.create(name: 'Paris', zip_code: "75000")
    user = User.create(first_name: "Anelise", last_name: "Gambini", description: "TEST", email: "TEST@TEST.COM", age: 42, city: city)
    @gossip = Gossip.new(
      'title' => params[:title],
      'content' => params[:content],
      'user' => user
    )
    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to '/dynamic_pages/home'
    else
      render '/gossips/new'
    end
  end
end
