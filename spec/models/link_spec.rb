# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Link, type: :model,
                     name: :link do
  it { should respond_to :id }
  it { should respond_to :url }
  it { should respond_to :key }
  it { should respond_to :expire_in }
  it { should respond_to :click }
end
