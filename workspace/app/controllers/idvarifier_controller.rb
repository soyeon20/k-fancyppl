class IdvarifierController < ApplicationController
    def getid
        @user_name = ''
        @checker = 'false'
        @ddd='';
        
        user_key = params[:key]
        user_db = Chat.find_by key: user_key
        
        if user_db
            ip_addr = request.remote_ip
            @checker = 'true'
            @user_name = user_db.name
        end
        
    end
end


=begin
database table

 |     id     |      ip     |       key      |     passwd      |
 

=end
