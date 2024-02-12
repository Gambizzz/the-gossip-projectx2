class DynamicPagesController < ApplicationController
  def welcome
    @first_name = params[:first_name]
  end

  def home
    @gossips = Gossip.all
  end

  def show_potin
    @this_gossip = Gossip.find(params[:id])
  end

  def show_author
    @user = User.find(params[:id])
  end
end