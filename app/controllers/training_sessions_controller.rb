class TrainingSessionsController < ApplicationController

    def show
        @training_session = TrainingSession.find(params[:id])
    end
    
    def index

        if params[:workout_id] && @workout = Workout.find_by_id(params[:workout_id])
          @training_sessions = @workout.training_sessions

        elsif params[:competition_id] && @competition = Competition.find_by_id(params[:competition_id])
          @training_sessions = @competition.training_sessions
        else

          @training_sessions = TrainingSession.all
        end
    end
    
    def new
        if params[:workout_id] && @workout = Workout.find_by_id(params[:workout_id])
          @training_session = @workout.training_sessions.build #has_many
        else
          @training_session = TrainingSession.new
        end
    end
    
    def create
        
        if params[:workout_id] && @workout = Workout.find_by_id(params[:workout_id])
          @training_session = @workout.training_sessions.build(training_session_params)
        else
           
          @training_session = TrainingSession.new(training_session_params)
        end
        
        if @training_session.save
            
          redirect_to training_session_path(@training_session)
        else
            
          render :new
        end
    end
    
    private
    
        def training_session_params

            params.require(:training_session).permit(:date, :condition, :competition_id, :workout_id)
            
        end
    

end

