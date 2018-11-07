# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Specification for an App Service Environment to use for this resource.
    #
    class HostingEnvironmentProfile

      include MsRestAzure

      # @return [String] Resource ID of the App Service Environment.
      attr_accessor :id

      # @return [String] Name of the App Service Environment.
      attr_accessor :name

      # @return [String] Resource type of the App Service Environment.
      attr_accessor :type


      #
      # Mapper for HostingEnvironmentProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HostingEnvironmentProfile',
          type: {
            name: 'Composite',
            class_name: 'HostingEnvironmentProfile',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
