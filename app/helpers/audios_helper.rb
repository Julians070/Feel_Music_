module AudiosHelper
    def soundcloud(audio)
        embed_info = audio.soundcloud_client
        embed_info["html"].html_safe
    end
end
