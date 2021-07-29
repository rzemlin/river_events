class RiverEvents::CLI
    def call
        
        puts "\nWelcome to the Russian  River!\n"
        get_months
        list_months
        get_user_month
        #get_events)for(month)
        #list_events
    end

    #user chooses event

    #displays event

    def get_months
        
        @months = RiverEvents::Month.all
    end

    def list_months
        puts "\nChose a month to see events.\n"
        @months.each.with_index(1) {|month, index| puts "#{index}. #{month.name}" }
    end

    def get_user_month
        chosen_month = gets.strip.to_i
        show_events_for(chosen_month) if valid_input(chosen_month, @months)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_events_for(chosen_month)
        month = @months[chosen_month - 1]
        puts "Here are events for #{month}."
        
        ##to implement
        #EdenEvents::Events.all.each.with_index(1) do |event|
        #    puts event.name
        #end
        #get_user_event

    end

    #get some real months
    #allow user to select 2nd month
    #allow exit any time




    

    






end