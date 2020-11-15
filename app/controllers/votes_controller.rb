class VotesController < ApplicationController
 
 
  def index
    @votes = Vote.all

  
  end

 #
  def new
    @vote = Vote.new
  end


def create

  puts " Los parametros son: #{vote_params}"
    @vote= Vote.new(vote_params)

puts " ESTOY EN VOTES CREATE"
    respond_to do |format|
      if @vote.save
           puts "BIEN"
        format.html { redirect_to root_path, notice: 'Muchas gracias, hemos recibido sus datos correctamente', :anchor => 'formulario' }
      else
        puts "ALGO HA IFO MAL"
         format.html { redirect_to root_path, alert: 'Ooops, lo sentimos algo ha ido mal, inténtelo de nuevo' }
      end
    end 
end

    def vote_params
      params.require(:vote).permit(:first_name, :last_name, :middle_name, :member, :cif)
    end
end
