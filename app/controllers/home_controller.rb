class HomeController < ApplicationController
  def index
  	@syllabi = Syllabus.all
  end
end
