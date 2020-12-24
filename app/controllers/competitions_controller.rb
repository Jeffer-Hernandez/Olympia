class CompetitionsController < ApplicationController

    def new
        @competition = Competition.new
    end

    def create
        @competition = current_user.competitions.build(competition_params)

        if @competition.save
            redirect_to competition_path(@competition)
        else
            render :new
        end

    end

    def index
        @competitions = current_user.competitions
    end

    def show
        @competition = Competition.find_by(id: params[:id])
    end

    def edit
        
        @competition = Competition.find_by(id: params[:id])
        
    end

    def update
        @competition = Competition.find_by(id: params[:id])
     
        if @competition.update(competition_params)
          redirect_to competition_path(@competition)
        else
          render :edit
        end
    end


    private

    def competition_params
        params.require(:competition).permit(:title, :category, :description)
    end

end
