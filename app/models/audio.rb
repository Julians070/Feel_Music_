class Audio < ActiveRecord::Base
    before_save :code
    def code
    self.url_audio =  self.url_audio.split('/').last if self.url_audio
    end
end
