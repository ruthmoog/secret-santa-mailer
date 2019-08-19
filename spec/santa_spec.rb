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

    secret_santa = Santa.new

    expect(secret_santa.shuffle(list_of_givers)).not_to eq(list_of_givers)
    expect(secret_santa.shuffle(list_of_givers)).to be_kind_of(Array)
  end
end
