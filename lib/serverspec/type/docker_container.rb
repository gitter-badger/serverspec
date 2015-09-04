module Serverspec::Type
  class DockerContainer < DockerBase
    def running?
      inspection['State']['Running'] && !inspection['State']['Restarting']
    end

    def has_volume?(container_path, host_path)
      inspection['Volumes'][container_path] == host_path
    end
  end
end
