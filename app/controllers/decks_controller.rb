class DecksController < ApplicationController
  before_action :set_deck, only: [:show, :update, :destroy, :deal]

  # GET /decks/:id/deal
  def deal
    @cards = @deck.cards.shuffle
    @hand = @cards.shift(5)
    render json: @hand
  end

  # GET /decks
  def index
    @decks = Deck.all

    render json: @decks
  end

  # GET /decks/1
  def show
    render json: @deck
  end

  # POST /decks
  def create
    @deck = Deck.create()
    @deck.build_deck
    if @deck.valid?
      render json: @deck, status: :created, location: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decks/1
  def update
    if @deck.update(deck_params)
      render json: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decks/1
  def destroy
    @deck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = Deck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deck_params
      params.fetch(:deck, {})
    end
end
