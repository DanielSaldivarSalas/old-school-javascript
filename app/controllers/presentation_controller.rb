class PresentationController < ApplicationController
  SLIDES = %w[
    slides/title
    slides/repo
    slides/background
    slides/definition
    slides/i_heart_javascript
    slides/libraries_not_used
    slides/sprinkle_continuum
    default/playlists/1
    slides/create-1
    slides/create-2
    create/playlists/1
    slides/destroy-1
    slides/destroy-2
    destroy/playlists/1
    slides/render-flash
    slides/update-1
    update/playlists/1
    slides/update-2
    slides/undo-1
    slides/undo-2
    undo/playlists/1
    slides/undo-3
    slides/copy-1
    slides/copy-2
    copy/playlists/1
    slides/reorder-1
    reorder/playlists/1
    slides/reorder-2
    slides/reorder-3
    final/playlists/1
    slides/latency
    final/playlists/1
    slides/what-we-didnt-do
    slides/thanks
  ]

  def index
    @src = SLIDES[params[:index].to_i || 0]
    render layout: 'presentation'
  end
end
