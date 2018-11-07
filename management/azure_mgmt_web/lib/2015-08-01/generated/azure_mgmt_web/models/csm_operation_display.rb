# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Meta data about operation used for display in portal.
    #
    class CsmOperationDisplay

      include MsRestAzure

      # @return [String]
      attr_accessor :provider

      # @return [String]
      attr_accessor :resource

      # @return [String]
      attr_accessor :operation

      # @return [String]
      attr_accessor :description


      #
      # Mapper for CsmOperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmOperationDisplay',
          type: {
            name: 'Composite',
            class_name: 'CsmOperationDisplay',
            model_properties: {
              provider: {
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
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
