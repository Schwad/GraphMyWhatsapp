class DatafilesController < ApplicationController
  def create
    @textfile = params["file"].read
    @new_file = DataFile.create(
      :content => @textfile
    )
    redirect_to datafile_path(@new_file.id)
  end

  def show
    @file = DataFile.find(params[:id])

  end
end
