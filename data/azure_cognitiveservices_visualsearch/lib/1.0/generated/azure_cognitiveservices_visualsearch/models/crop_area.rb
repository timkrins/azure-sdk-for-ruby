# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VisualSearch::V1_0
  module Models
    #
    # A JSON object consisting of coordinates specifying the four corners of a
    # cropped rectangle within the input image.
    #
    class CropArea

      include MsRestAzure

      # @return [Float] The top coordinate of the region to be cropped. The
      # coordinate is a fractional value of the original image's height and is
      # measured from the top edge of the image. Specify the coordinate as a
      # value from 0.0 through 1.0.
      attr_accessor :top

      # @return [Float] The bottom coordinate of the region to be cropped. The
      # coordinate is a fractional value of the original image's height and is
      # measured from the top edge of the image. Specify the coordinate as a
      # value from 0.0 through 1.0.
      attr_accessor :bottom

      # @return [Float] The left coordinate of the region to be cropped. The
      # coordinate is a fractional value of the original image's width and is
      # measured from the left edge of the image. Specify the coordinate as a
      # value from 0.0 through 1.0.
      attr_accessor :left

      # @return [Float] The right coordinate of the region to be cropped. The
      # coordinate is a fractional value of the original image's width and is
      # measured from the left edge of the image. Specify the coordinate as a
      # value from 0.0 through 1.0.
      attr_accessor :right


      #
      # Mapper for CropArea class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CropArea',
          type: {
            name: 'Composite',
            class_name: 'CropArea',
            model_properties: {
              top: {
                client_side_validation: true,
                required: true,
                serialized_name: 'top',
                type: {
                  name: 'Double'
                }
              },
              bottom: {
                client_side_validation: true,
                required: true,
                serialized_name: 'bottom',
                type: {
                  name: 'Double'
                }
              },
              left: {
                client_side_validation: true,
                required: true,
                serialized_name: 'left',
                type: {
                  name: 'Double'
                }
              },
              right: {
                client_side_validation: true,
                required: true,
                serialized_name: 'right',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
