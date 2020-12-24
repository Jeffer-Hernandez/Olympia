module TrainingSessionsHelper
    def display_index_header
        if @workout
         content_tag(:h2,"Training Sessions for the  #{@workout.name} workout")
        elsif @competition
          tag.h2("Training Sessions for the #{@competition.title} competition")
        else
         content_tag(:h1, "All Training Sessions")
        end
    end

    def display_date(t)
        "on #{t.datetime}" if t.date
    end

    def display_condition(t)
        "and felt: #{t.condition}"  if !t.condition.empty?
    end

end
