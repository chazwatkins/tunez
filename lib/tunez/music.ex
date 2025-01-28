defmodule Tunez.Music do
  @moduledoc false
  use Ash.Domain,
    otp_app: :tunez,
    extensions: [AshPhoenix]

  resources do
    resource Tunez.Music.Artist do
      define :read_artists, action: :read
      define :get_artist_by_id, action: :read, get_by: :id
      define :create_artist, action: :create
      define :update_artist, action: :update
      define :destroy_artist, action: :destroy
    end

    resource Tunez.Music.Album
  end
end
