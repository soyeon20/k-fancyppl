require 'open-uri'
class IndexController < ApplicationController
    @Home = "https://beenkhan-binkhan.c9users.io"
    def index
#index page hash variable define
        @upcomming_event = Event.limit(15)
        @may_you_love_event = Event.order('id DESC').limit(15)
        @top_group = Array.new(10) { Hash.new };
        @may_you_love_group = Array.new(10) { Hash.new };
       
       	
		for i in 0..9
		    @top_group[i] = @upcomming_event[i];
		    @may_you_love_group[i] = @may_you_love_event[i];
		end
    end
    
    def festival
        @checker = 'true'
        @page = params[:page]
        @fest_id = params[:id]
        
            
            
        
        @data = Hash.new
        #data from database
        
        #@data['name'] = ""
        #@data['thumbnail'] = ""
        #@data['background_image'] = ""
        #@data['schedule'] = ""
        #@data['location'] = ""
        #@data['address'] = ""

        
        
        
            
        if @selected_festival = Event.find_by_ev_num(@fest_id)
            
            @data['background_image'] = "https://beenkhan-binkhan.c9users.io/assets/Kasbian.jpg"
            
            if @page == 'main'
               
                #data from database
                
                       #data from database
                        
                
                
                
                lineup_doc=Nokogiri::HTML(open("http://m.playdb.co.kr/Play/Cast/#{@selected_festival.ev_num}"))
                container=lineup_doc.css(".cast_list")
                @persons=Array.new(container.css("li").length) {Array.new(2 )}
                i=0
                
                container.css("li").each do |l|
                  @persons[i][0]=l.css("img").attr("src").text
                  @persons[i][1]=l.css(".name").text
                  
                  i+=1
                end
    #DUMMY DATA NEED TO MODIFY :::::::         
    
                @data['gallery'] = Array.new(8);
                
                @data['gallery'][0] = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQiDDzi_LoyFG56EFPr-775yqcyNfrw9JRI5zM7PbOoxKMtm5x"
                
                for i in 1..7
                    @data['gallery'][i] = @data['gallery'][i-1]
                end
                
            elsif @page == 'livetalk'
                ################  creating passwd key 
                ################  insert into database
                
                temp_key = (0...50).map { ('a'..'z').to_a[rand(26)] }.join;
                user_ip = request.remote_ip;
                user_name = '소연'
                
                
                
                
               # chat = Chat.new
               # chat.name = user_name
               # chat.ip = user_ip
               # chat.key = temp_key
                
               # chat.save
                
                @passkey = user_name
                
            elsif @page == 'tips'
                @subject = Chat.all
                
                
            
            end
        
        else
            
            @checker='false'
            
        end
        
        
    end
    
   
    
    
     def fest

    end
    
    
    def tipwrite
        
        tip = Chat.new
        tip.key = params[:title];
        tip.name = params[:owner];
        
        tip.save
        
        redirect_to '/'
    end
    
    
    def make_meeting
        meeting=Meeting.new
        meeting_title=params[:meeting_title]
        meeting_category=params[:meeting_category]
        meeting.save
        redirect_to '/groups/1'

    end
    
    def groups
        @event = Event.all
    end
        
end
