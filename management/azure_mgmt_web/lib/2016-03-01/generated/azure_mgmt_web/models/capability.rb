# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_03_01
  module Models
    #
    # Describes the capabilities/features allowed for a specific SKU.
    #
    class Capability

      include MsRestAzure

      # @return [String] Name of the SKU capability.
      attr_accessor :name

      # @return [String] Value of the SKU capability.
      attr_accessor :value

      # @return [String] Reason of the SKU capability.
      attr_accessor :reason


      #
      # Mapper for Capability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Capability',
          type: {
            name: 'Composite',
            class_name: 'Capability',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
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