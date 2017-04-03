class DefaultController < ApplicationController
	def index2
       @homes = Home.all     
        @total = @homes.count 
       # @homes.each do |t|
       # @hom_con = t.content  
       # @hom_bi_nam = t.bike_name
       # @hom_bi_ye = t.bike_year
       # @hom_owner = t.owner_name
       # @hom_city = t.city
       
      
  end
    def show
       @home = Home.find(params[:id])
      
    end 

	def generic           


	end

	def stories
	 	  
	end  

	def specs

	end	

	def contact

	end	
 def shortcode(string)
    if(string.include? "{extendimg} ")
           string.gsub!('{extendimg}', '<div class="extendimg">')
           string.gsub!('{/extendimg}', '</div>')
       end
 end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:home).permit(:title, :content)
    end
	
end
