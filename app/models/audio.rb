class Audio < ActiveRecord::Base

    def soundcloud_client
        client = Soundcloud.new(:client_id => 'de4ac2a8f510c7cddb2e106db2e247f8')
        track_url = self.url_audio

        begin
            client.get('/oembed', :url => track_url)
        rescue Soundcloud::ResponseError => e
            puts "Error: #{e.message}, Status Code: #{e.response.code}"

        end

    end
    private
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
        errors.add(:base, 'Line Items Present')
        throw :abort
        end

    end
end
