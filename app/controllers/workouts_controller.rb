class WorkoutsController < ApplicationController

    def new
        @workout = Workout.new
    end

    def create
        @workout = current_user.created_workouts.build(workout_params)

        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
        
    end

    def index
        @workouts = Workout.all
    end


    def show
        @workout = Workout.find_by(id: params[:id])
    end


    private

    def workout_params
        params.require(:workout).permit(:category, :intensity, :user_id)
    end


end
