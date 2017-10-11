# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Describes a virtual machine scale set network profile's IP configuration.
    #
    class VirtualMachineScaleSetIPConfiguration < SubResource

      include MsRestAzure

      # @return [String] The IP configuration name.
      attr_accessor :name

      # @return [ApiEntityReference] Specifies the identifier of the subnet.
      attr_accessor :subnet

      # @return [Boolean] Specifies the primary network interface in case the
      # virtual machine has more than 1 network interface.
      attr_accessor :primary

      # @return [VirtualMachineScaleSetPublicIPAddressConfiguration] The
      # publicIPAddressConfiguration.
      attr_accessor :public_ipaddress_configuration

      # @return [IPVersion] Available from Api-Version 2017-03-30 onwards, it
      # represents whether the specific ipconfiguration is IPv4 or IPv6.
      # Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'.
      # Possible values include: 'IPv4', 'IPv6'
      attr_accessor :private_ipaddress_version

      # @return [Array<SubResource>] Specifies an array of references to
      # backend address pools of application gateways. A scale set can
      # reference backend address pools of multiple application gateways.
      # Multiple scale sets cannot use the same application gateway.
      attr_accessor :application_gateway_backend_address_pools

      # @return [Array<SubResource>] Specifies an array of references to
      # backend address pools of load balancers. A scale set can reference
      # backend address pools of one public and one internal load balancer.
      # Multiple scale sets cannot use the same load balancer.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<SubResource>] Specifies an array of references to
      # inbound Nat pools of the load balancers. A scale set can reference
      # inbound nat pools of one public and one internal load balancer.
      # Multiple scale sets cannot use the same load balancer
      attr_accessor :load_balancer_inbound_nat_pools


      #
      # Mapper for VirtualMachineScaleSetIPConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetIPConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetIPConfiguration',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ApiEntityReference'
                }
              },
              primary: {
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              },
              public_ipaddress_configuration: {
                required: false,
                serialized_name: 'properties.publicIPAddressConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetPublicIPAddressConfiguration'
                }
              },
              private_ipaddress_version: {
                required: false,
                serialized_name: 'properties.privateIPAddressVersion',
                type: {
                  name: 'String'
                }
              },
              application_gateway_backend_address_pools: {
                required: false,
                serialized_name: 'properties.applicationGatewayBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              load_balancer_backend_address_pools: {
                required: false,
                serialized_name: 'properties.loadBalancerBackendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              load_balancer_inbound_nat_pools: {
                required: false,
                serialized_name: 'properties.loadBalancerInboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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