module RspecSupportMethods
  # Helper method for temporary file
  module TemporaryFile
    def temp_file(text)
      file = Tempfile.new('tmp')
      file.write(text)
      file.close
      file
    end
  end
end
