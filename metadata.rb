maintainer        "Tim Boisvert"
maintainer_email  "tboisvert@asheavenue.com"
license           "Apache 2.0"
description       "Creates mysql databases"
version           "1.0.0"

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end
