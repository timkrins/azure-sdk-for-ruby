# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search
  module Models
    #
    # Response containing the primary and secondary API keys for a given Azure
    # Search service.
    #
    class AdminKeyResult

      include MsRestAzure

      # @return [String] The primary API key of the Search service.
      attr_accessor :primary_key

      # @return [String] The secondary API key of the Search service.
      attr_accessor :secondary_key


      #
      # Mapper for AdminKeyResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AdminKeyResult',
          type: {
            name: 'Composite',
            class_name: 'AdminKeyResult',
            model_properties: {
              primary_key: {
                required: false,
                read_only: true,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                read_only: true,
                serialized_name: 'secondaryKey',
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
