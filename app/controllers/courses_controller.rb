class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'python' #http://192.168.1.111:3000/?looking_for=diet
  	@courses = Coursera.for(@search_term)
  end
end
