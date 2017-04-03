class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all    
    @stories.each do |story|
     @contents = shortcode(story.content)
  end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end
def generics

  end
  #  def shortcode(text)
  #   text.gsub!(/(test)/i, '<h1>testing</h>').html_safe    

  # end
  def shortcode(string)

      if(string.include? "<p>{")
          string.gsub!('<p>{', '{')
          string.gsub!('}</p>', '}')
      end
      if (string.include? "{subwrap}")
          string.gsub!('{subwrap}', '<div class="subwrap">')
          string.gsub!('{/subwrap}', '</div>')
      end
      if  (string.include? "{container}")
          string.gsub!('{container}', '<div class="container">')
          string.gsub!('{/container}', '</div>')
      end

      if  (string.include? "{center block}")
          string.gsub!('{center block}', '<div class="col-xs-7 center-block generic">')
          string.gsub!('{/center block}', '</div>')
      end 
      if  (string.include? "{extendimg}")
          string.gsub!('{extendimg}', '<div class="extendimg"><img src="images/yezdi-story2.jpg" alt="images" />')
          string.gsub!('{/extendimg}', '</div>')
      end



      if (string.include? "{test}")
          string.gsub!('{test}','<h1>')
          string.gsub!('{/test}', '</h1>')
      end
      if (string.include? "{accordion}") 
           string.gsub!('{accordion}','<div class="accordion">')
           string.gsub!('{/accordion}', '</div>')
      end
      if (string.include? "{accordion-item}")
           string.gsub!('{accordion-item}','<div class="accordion-item">')
           string.gsub!('{/accordion-item}', '</div>')
      end
      if (string.include? "{accordion-copy}")
           string.gsub!('{accordion-copy}','<div class="accordion-copy">')
           string.gsub!('{/accordion-copy}','</div>' )
      end     

  end


  # GET /stories/new
  # def new
  #   @story = Story.new
  # end

  # # GET /stories/1/edit
  # def edit
  # end
#   def removeshortcode(string):
# replaced_string = ""
# if(re.search('{dspchannel_images}',string)):
# string = re.sub('{dspchannel_images}', '<div class="client-logo">', string)
# string = re.sub('{/dspchannel_images}', '</div>', string)

# if(re.search('{content_with_img}',string)):
# string = re.sub('{content_with_img}', '<div class="content-withimg clearfix">', string)
# string = re.sub('{/content_with_img}', '</div>', string)

# if(re.search('{socialicon}',string)):
# string = re.sub('{socialicon}', '<div class="socialicon">', string)
# string = re.sub('{/socialicon}', '</div>', string)

  # # POST /stories
  # # POST /stories.json
  # def create
  #   @story = Story.new(story_params)

  #   respond_to do |format|
  #     if @story.save
  #       format.html { redirect_to @story, notice: 'Story was successfully created.' }
  #       format.json { render :show, status: :created, location: @story }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @story.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /stories/1
  # # PATCH/PUT /stories/1.json
  # def update
  #   respond_to do |format|
  #     if @story.update(story_params)
  #       format.html { redirect_to @story, notice: 'Story was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @story }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @story.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /stories/1
  # # DELETE /stories/1.json
  # def destroy
  #   @story.destroy
  #   respond_to do |format|
  #     format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :content)
    end

end
helper_method:shortcode