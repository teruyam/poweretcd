function Get-EtcdClusterMachines ($Server)
{
    Invoke-JsonRequest http://$($Server):7001/v2/admin/machines
}
