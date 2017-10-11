# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2017_01_19
  module Models
    #
    # IoT Hub capacity information.
    #
    class IotHubCapacity

      include MsRestAzure

      # @return [Integer] The minimum number of units.
      attr_accessor :minimum

      # @return [Integer] The maximum number of units.
      attr_accessor :maximum

      # @return [Integer] The default number of units.
      attr_accessor :default

      # @return [IotHubScaleType] The type of the scaling enabled. Possible
      # values include: 'Automatic', 'Manual', 'None'
      attr_accessor :scale_type


      #
      # Mapper for IotHubCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IotHubCapacity',
          type: {
            name: 'Composite',
            class_name: 'IotHubCapacity',
            model_properties: {
              minimum: {
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                required: false,
                read_only: true,
                serialized_name: 'default',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                required: false,
                read_only: true,
                serialized_name: 'scaleType',
                type: {
                  name: 'Enum',
                  module: 'IotHubScaleType'
                }
              }
            }
          }
        }
      end
    end
  end
end