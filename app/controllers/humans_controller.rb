class HumansController < ApplicationController
  def index
    @humans = Human.includes(:images).order('created_at DESC').limit(5)
  end
  
  def new
    @human = Human.new
    @human.images.build
  end

  def created
    @human = Human.create!(human_params)
    if @human.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def human_params
    params.require(:human).permit(:name, :price, :explain, :area, :prefecture_id, :gender_id, :technique_id, :history_id, images_attributes: [:src, :_destroy, :id])
  end

end
