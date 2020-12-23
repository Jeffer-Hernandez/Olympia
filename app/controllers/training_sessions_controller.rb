class TrainingSessionsController < ApplicationController

    def new
        @training_session = TrainingSession.new
    end


    # def new

    #     # if params[:workout_id] && @workout = Workout.find_by_id(params[:workout_id])
    #     #     @training_session = @workout.training_sessions.build #has_many
    #     # else
    #     #     @training_session = TrainingSession.new
    #     #     @training_session.build_workout
    #     # end

    #     @training_session = TrainingSession.new(training_session_params)



    # end

    def create
        @training_session = TrainingSession.new(training_session_params)

        if @training_session.save
            redirect_to training_session_path(@training_session)
        else
            render :new
        end

    end

    def index
        @training_sessions = TrainingSession.find_by(user_id: params[:user_id])
    end

    def show
        @training_session = TrainingSession.find_by(id: params[:id])
    end

    # private

    def training_session_params
        params.require(:training_session).permit(:date, :condition, :competition_id, :workout_id, :user_id)  
    end

end
