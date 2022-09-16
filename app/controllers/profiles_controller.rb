class ProfilesController < ApplicationController
    def index
        render json: @current_user.profiles
    end
    
    def create
        food = Food.find_by(id: params[:food_id])
        profile = @current_user.profiles.create!( profile_params)
        render json: profile, status: :created
    end
    
    def update
        profile = Profile.find_by(id: params[:id])
        profile.update!(profile_params)
        render json: profile
    end
    
    def destroy
        find_profile.destroy
        head :no_content
    end
    
    
    private
    
    def find_profile
        Profile.find(params[:id])
       
    end
    
    def profile_params
        params.permit(:food_id, :user_id, :firstName, :lastName, :email, :image_url)
    end
    
end
