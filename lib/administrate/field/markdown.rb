# frozen_string_literal: true

require 'kramdown'
require 'rails'
require 'administrate'
require 'administrate/field/base'

module Administrate
  module Field
    class Markdown < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript(
          'administrate-field-markdown/application'
        )
        Administrate::Engine.add_stylesheet(
          'administrate-field-markdown/application'
        )

        config.assets.paths << File.expand_path('../../node_modules', __dir__)
      end

      def to_s
        Kramdown::Document.new(data).to_html
      end
      
      def simplemde_options
        options.fetch(:simplemde, {})
      end
    end
  end
end
