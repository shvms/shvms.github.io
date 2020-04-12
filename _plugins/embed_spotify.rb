module Jekyll
    module EmbedSpotify
        def spotify_player(uri)
            parts = uri.split(':')
            id = parts[2]
            type = parts[1]
            return "<iframe src=\"https://open.spotify.com/embed/#{type}/#{id}\" width=\"100%\" height=\"80px\" frameborder=\"0\" allowtransparency=\"true\" allow=\"encrypted-media\"></iframe>"
        end
    end
end

Liquid::Template.register_filter(Jekyll::EmbedSpotify)
