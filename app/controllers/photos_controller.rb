class PhotosController < ApplicationController
  def index
    @photos = [
      Photo.new(id: "TXHml4xX9A0",
        description: "two woman on kitchen cooking",
        image_url: "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        thumb_url: "https://images.unsplash.com/photo-1556910636-c508da52e01c?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        source_url: "https://unsplash.com/photos/TXHml4xX9A0",
        user_id: "5RArX9WcBkk",
        user_name: "Dane Deaner",
        user_url: "https://unsplash.com/@danedeaner"
      ),
      Photo.new(
        id: "hfYoSTrXcoA",
        description: "",
        image_url: "https://images.unsplash.com/photo-1570898546820-2545a545c969?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        thumb_url: "https://images.unsplash.com/photo-1570898546820-2545a545c969?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        source_url: "https://unsplash.com/photos/hfYoSTrXcoA",
        user_id: "oRKaPP76J4M",
        user_name: "Anita Austvika",
        user_url: "https://unsplash.com/@anitaaustvika"
      ),
      Photo.new(
        id: "HbAddptme1Q",
        description: "Nuevas brujas.",
        image_url: "https://images.unsplash.com/flagged/photo-1570733117311-d990c3816c47?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        thumb_url: "https://images.unsplash.com/flagged/photo-1570733117311-d990c3816c47?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjk1NzM0fQ",
        source_url: "https://unsplash.com/photos/HbAddptme1Q",
        user_id: "wXxRQShrF4o",
        user_name: "Cesar La Rosa",
        user_url: "https://unsplash.com/@obcesar"
      )
    ]
  end
end
