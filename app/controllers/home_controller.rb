class HomeController < ApplicationController

  def trash
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: "All Markeed Item Were Successfully Deleted"
  end
end
