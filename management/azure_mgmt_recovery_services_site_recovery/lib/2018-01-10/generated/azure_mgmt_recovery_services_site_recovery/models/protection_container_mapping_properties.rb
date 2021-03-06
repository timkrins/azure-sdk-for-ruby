# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Protection container mapping properties.
    #
    class ProtectionContainerMappingProperties

      include MsRestAzure

      # @return [String] Paired protection container ARM ID.
      attr_accessor :target_protection_container_id

      # @return [String] Friendly name of paired container.
      attr_accessor :target_protection_container_friendly_name

      # @return [ProtectionContainerMappingProviderSpecificDetails] Provider
      # specific provider details.
      attr_accessor :provider_specific_details

      # @return [String] Health of pairing.
      attr_accessor :health

      # @return [Array<HealthError>] Health error.
      attr_accessor :health_error_details

      # @return [String] Policy ARM Id.
      attr_accessor :policy_id

      # @return [String] Association Status
      attr_accessor :state

      # @return [String] Friendly name of source protection container.
      attr_accessor :source_protection_container_friendly_name

      # @return [String] Friendly name of source fabric.
      attr_accessor :source_fabric_friendly_name

      # @return [String] Friendly name of target fabric.
      attr_accessor :target_fabric_friendly_name

      # @return [String] Friendly name of replication policy.
      attr_accessor :policy_friendly_name


      #
      # Mapper for ProtectionContainerMappingProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionContainerMappingProperties',
          type: {
            name: 'Composite',
            class_name: 'ProtectionContainerMappingProperties',
            model_properties: {
              target_protection_container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetProtectionContainerId',
                type: {
                  name: 'String'
                }
              },
              target_protection_container_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetProtectionContainerFriendlyName',
                type: {
                  name: 'String'
                }
              },
              provider_specific_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerSpecificDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'ProtectionContainerMappingProviderSpecificDetails',
                  class_name: 'ProtectionContainerMappingProviderSpecificDetails'
                }
              },
              health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'health',
                type: {
                  name: 'String'
                }
              },
              health_error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthErrorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              source_protection_container_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceProtectionContainerFriendlyName',
                type: {
                  name: 'String'
                }
              },
              source_fabric_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceFabricFriendlyName',
                type: {
                  name: 'String'
                }
              },
              target_fabric_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetFabricFriendlyName',
                type: {
                  name: 'String'
                }
              },
              policy_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyFriendlyName',
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
