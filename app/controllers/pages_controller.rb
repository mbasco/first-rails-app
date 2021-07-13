class PagesController < ApplicationController
    def about
        @time = Date.today.strftime("%B #{Date.today.day.ordinalize}")
    end
  
    def contact
        search = params[:member]
        @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
        if search.present?
            @members = @members.select { |name| name.start_with?(search)}
        end
    end
  
    def home
    end
end
