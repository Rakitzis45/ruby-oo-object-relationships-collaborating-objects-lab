class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file == "."|| file ==".."}
    end
    
    def import 
        files.each{|file| Song.new_by_filename(file)}
    end
end