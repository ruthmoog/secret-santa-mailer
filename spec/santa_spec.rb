# frozen_string_literal: true

require 'santa'

RSpec.describe 'Santa' do
  it 'creates a rotated list of receivers' do
    list_of_givers = %w[Dasher Dancer Prancer Vixen]
    list_of_receivers = %w[Dancer Prancer Vixen Dasher]

    secret_santa = Santa.new

    expect(secret_santa.receivers(list_of_givers)).to eq(list_of_receivers)
  end

  it 'shuffles the list of givers' do
    list_of_givers = %w[Dasher Dancer Prancer Vixen]
    qty_of_givers = list_of_givers.count

    secret_santa = Santa.new

    expect(secret_santa.shuffle(list_of_givers)).to be_kind_of(Array)
    secret_santa.shuffle(list_of_givers) do
      should have_exactly(qty_of_givers).items
    end
  end
end
