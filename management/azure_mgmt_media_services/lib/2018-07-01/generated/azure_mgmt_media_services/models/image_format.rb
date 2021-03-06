# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Describes the properties for an output image file.
    #
    class ImageFormat < Format

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ImageFormat"
      end

      attr_accessor :odatatype


      #
      # Mapper for ImageFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ImageFormat',
          type: {
            name: 'Composite',
            class_name: 'ImageFormat',
            model_properties: {
              filename_pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filenamePattern',
                type: {
                  name: 'String'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
