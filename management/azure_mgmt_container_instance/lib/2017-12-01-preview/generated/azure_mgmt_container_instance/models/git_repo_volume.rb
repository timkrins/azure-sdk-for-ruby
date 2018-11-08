# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2017_12_01_preview
  module Models
    #
    # Represents a volume that is populated with the contents of a git
    # repository
    #
    class GitRepoVolume

      include MsRestAzure

      # @return [String] Target directory name. Must not contain or start with
      # '..'.  If '.' is supplied, the volume directory will be the git
      # repository.  Otherwise, if specified, the volume will contain the git
      # repository in the subdirectory with the given name.
      attr_accessor :directory

      # @return [String] Repository URL
      attr_accessor :repository

      # @return [String] Commit hash for the specified revision.
      attr_accessor :revision


      #
      # Mapper for GitRepoVolume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GitRepoVolume',
          type: {
            name: 'Composite',
            class_name: 'GitRepoVolume',
            model_properties: {
              directory: {
                required: false,
                serialized_name: 'directory',
                type: {
                  name: 'String'
                }
              },
              repository: {
                required: true,
                serialized_name: 'repository',
                type: {
                  name: 'String'
                }
              },
              revision: {
                required: false,
                serialized_name: 'revision',
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
