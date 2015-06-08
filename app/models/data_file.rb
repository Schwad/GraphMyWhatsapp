class DataFile < ActiveRecord::Base

  def self.save(upload)
    if upload
      name =  upload['datafile'].original_filename
      directory = "public/data"
      # create the file path
      path = File.join(directory, name)
      # write the file
      File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
    end
  end
end
