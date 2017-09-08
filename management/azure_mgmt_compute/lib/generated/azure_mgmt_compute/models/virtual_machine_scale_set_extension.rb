# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a Virtual Machine Scale Set Extension.
    #
    class VirtualMachineScaleSetExtension < MsRestAzure::SubResourceReadOnly

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the extension.
      attr_accessor :name

      # @return [String] If a value is provided and is different from the
      # previous value, the extension handler will be forced to update even if
      # the extension configuration has not changed.
      attr_accessor :force_update_tag

      # @return [String] The name of the extension handler publisher.
      attr_accessor :publisher

      # @return [String] Specifies the type of the extension; an example is
      # "CustomScriptExtension".
      attr_accessor :type

      # @return [String] Specifies the version of the script handler.
      attr_accessor :type_handler_version

      # @return [Boolean] Indicates whether the extension should use a newer
      # minor version if one is available at deployment time. Once deployed,
      # however, the extension will not upgrade minor versions unless
      # redeployed, even with this property set to true.
      attr_accessor :auto_upgrade_minor_version

      # @return Json formatted public settings for the extension.
      attr_accessor :settings

      # @return The extension can contain either protectedSettings or
      # protectedSettingsFromKeyVault or no protected settings at all.
      attr_accessor :protected_settings

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state


      #
      # Mapper for VirtualMachineScaleSetExtension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetExtension',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetExtension',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              force_update_tag: {
                required: false,
                serialized_name: 'properties.forceUpdateTag',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: false,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                required: false,
                serialized_name: 'properties.typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              auto_upgrade_minor_version: {
                required: false,
                serialized_name: 'properties.autoUpgradeMinorVersion',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              },
              protected_settings: {
                required: false,
                serialized_name: 'properties.protectedSettings',
                type: {
                  name: 'Object'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
