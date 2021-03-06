Write-Warning this will restore a backup of AD sites and services subnets

#Building command to build the Site Home
Set-ADReplicationSite -Identity Home -AutomaticInterSiteTopologyGenerationEnabled True
Set-ADReplicationSubnet -Site Home -Identity '10.0.0.0/16' -ErrorAction SilentlyContinue

#Building command to build the Site Brandon
Set-ADReplicationSite -Identity Brandon -AutomaticInterSiteTopologyGenerationEnabled True
Set-ADReplicationSubnet -Site Brandon -Identity '10.1.0.0/24' -ErrorAction SilentlyContinue
Set-ADReplicationSubnet -Site Brandon -Identity '192.168.0.0/17' -ErrorAction SilentlyContinue

Write-Output 'End of the restore script'
