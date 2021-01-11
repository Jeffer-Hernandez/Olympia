class TrainingSessionsController < ApplicationController

    def show
        @training_session = TrainingSession.find(params[:id])
    end
    
    def index

        if params[:workout_id]
            @training_sessions = Workout.find_by(id: params[:workout_id]).training_sessions
       
        else
            @training_sessions = current_user.training_sessions
        end
    
    end

    def new

        if params[:workout_id] 
            @training_session = TrainingSession.new(workout_id: params[:workout_id])
        else
            @training_session = TrainingSession.new
        end

    end

    
    def create
  
        @training_session = TrainingSession.new(training_session_params)
        
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

