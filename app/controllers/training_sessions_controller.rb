class TrainingSessionsController < ApplicationController

    def show
        @training_session = TrainingSession.find(params[:id])
    end
    
    def index
        @training_sessions = TrainingSession.all

    end
    
    def new
        @training_session = TrainingSession.new
      
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

