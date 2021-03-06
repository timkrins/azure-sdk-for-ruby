# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # The service metric specifications.
    #
    class ServiceSpecification

      include MsRestAzure

      # @return [Array<Metric>] List of metric specifications.
      attr_accessor :metric_specifications


      #
      # Mapper for ServiceSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceSpecification',
          type: {
            name: 'Composite',
            class_name: 'ServiceSpecification',
            model_properties: {
              metric_specifications: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Metric'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
