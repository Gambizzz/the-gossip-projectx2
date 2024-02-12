class DynamicPagesController < ApplicationController
  def welcome
    @first_name = params[:first_name]
  end
end

#lancer la page : http://127.0.0.1:3000/dynamic_pages/welcome/Anelise  (Anelise = le prenom)