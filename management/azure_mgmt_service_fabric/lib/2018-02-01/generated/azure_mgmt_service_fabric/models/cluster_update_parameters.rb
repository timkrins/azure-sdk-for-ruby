# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Cluster update request
    #
    class ClusterUpdateParameters

      include MsRestAzure

      # @return [Array<Enum>] The list of add-on features to enable in the
      # cluster.
      attr_accessor :add_on_features

      # @return [CertificateDescription] The certificate to use for securing
      # the cluster. The certificate provided will be used for  node to node
      # security within the cluster, SSL certificate for cluster management
      # endpoint and default  admin client.
      attr_accessor :certificate

      # @return [ServerCertificateCommonNames] Describes a list of server
      # certificates referenced by common name that are used to secure the
      # cluster.
      attr_accessor :certificate_common_names

      # @return [Array<ClientCertificateCommonName>] The list of client
      # certificates referenced by common name that are allowed to manage the
      # cluster. This will overwrite the existing list.
      attr_accessor :client_certificate_common_names

      # @return [Array<ClientCertificateThumbprint>] The list of client
      # certificates referenced by thumbprint that are allowed to manage the
      # cluster. This will overwrite the existing list.
      attr_accessor :client_certificate_thumbprints

      # @return [String] The Service Fabric runtime version of the cluster.
      # This property can only by set the user when **upgradeMode** is set to
      # 'Manual'. To get list of available Service Fabric versions for new
      # clusters use [ClusterVersion API](./ClusterVersion.md). To get the list
      # of available version for existing clusters use
      # **availableClusterVersions**.
      attr_accessor :cluster_code_version

      # @return [Array<SettingsSectionDescription>] The list of custom fabric
      # settings to configure the cluster. This will overwrite the existing
      # list.
      attr_accessor :fabric_settings

      # @return [Array<NodeTypeDescription>] The list of node types in the
      # cluster. This will overwrite the existing list.
      attr_accessor :node_types

      # @return [Enum] The reliability level sets the replica set size of
      # system services. Learn about
      # [ReliabilityLevel](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cluster-capacity).
      #
      # - None - Run the System services with a target replica set count of 1.
      # This should only be used for test clusters.
      # - Bronze - Run the System services with a target replica set count of
      # 3. This should only be used for test clusters.
      # - Silver - Run the System services with a target replica set count of
      # 5.
      # - Gold - Run the System services with a target replica set count of 7.
      # - Platinum - Run the System services with a target replica set count of
      # 9.
      # . Possible values include: 'None', 'Bronze', 'Silver', 'Gold',
      # 'Platinum'
      attr_accessor :reliability_level

      # @return [CertificateDescription] The server certificate used by reverse
      # proxy.
      attr_accessor :reverse_proxy_certificate

      # @return [ClusterUpgradePolicy] The policy to use when upgrading the
      # cluster.
      attr_accessor :upgrade_description

      # @return [Enum] The upgrade mode of the cluster when new Service Fabric
      # runtime version is available.
      #
      # - Automatic - The cluster will be automatically upgraded to the latest
      # Service Fabric runtime version as soon as it is available.
      # - Manual - The cluster will not be automatically upgraded to the latest
      # Service Fabric runtime version. The cluster is upgraded by setting the
      # **clusterCodeVersion** property in the cluster resource.
      # . Possible values include: 'Automatic', 'Manual'
      attr_accessor :upgrade_mode

      # @return [Hash{String => String}] Cluster update parameters
      attr_accessor :tags


      #
      # Mapper for ClusterUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpdateParameters',
            model_properties: {
              add_on_features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addOnFeatures',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificateCommonNames',
                type: {
                  name: 'Composite',
                  class_name: 'ServerCertificateCommonNames'
                }
              },
              client_certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateCommonNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateCommonNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateCommonName'
                      }
                  }
                }
              },
              client_certificate_thumbprints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateThumbprints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateThumbprintElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateThumbprint'
                      }
                  }
                }
              },
              cluster_code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterCodeVersion',
                type: {
                  name: 'String'
                }
              },
              fabric_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fabricSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SettingsSectionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SettingsSectionDescription'
                      }
                  }
                }
              },
              node_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeTypeDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeTypeDescription'
                      }
                  }
                }
              },
              reliability_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reliabilityLevel',
                type: {
                  name: 'String'
                }
              },
              reverse_proxy_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reverseProxyCertificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              upgrade_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeDescription',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterUpgradePolicy'
                }
              },
              upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeMode',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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