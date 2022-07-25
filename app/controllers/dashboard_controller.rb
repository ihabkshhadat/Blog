class DashboardController < ApplicationController
  def index
    @blogs = Blog.all
    @service = ActiveStorage::Blob.service
    render :layout => 'dashboard'
  end

  def new_blog

  end

  def create_blog

  end

end
