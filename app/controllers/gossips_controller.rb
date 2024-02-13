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
    if @gossip.save
      #flash[:success] = "Ton potin est sauvegardé"
      redirect_to '/dynamic_pages/home'
    else
      #flash[:error] = "Impossible de sauvegarder ton potin"
      render '/gossips/new'
    end
  end
end
