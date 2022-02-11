class HomeController < ApplicationController

    # This method is called when we click the button on the index
    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to root_url, notice: "Items Cleared."
    end

    def trash_em_all
        @trash_em_all = List.all.destroy_all
        redirect_to root_url, notice: "Items Cleared."
    end
end