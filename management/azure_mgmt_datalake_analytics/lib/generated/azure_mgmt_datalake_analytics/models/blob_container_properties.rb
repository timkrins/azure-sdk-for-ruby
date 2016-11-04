# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Azure Storage blob container properties information.
    #
    class BlobContainerProperties

      include MsRestAzure

      # @return [DateTime] the last modified time of the blob container.
      attr_accessor :last_modified_time


      #
      # Mapper for BlobContainerProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BlobContainerProperties',
          type: {
            name: 'Composite',
            class_name: 'BlobContainerProperties',
            model_properties: {
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
