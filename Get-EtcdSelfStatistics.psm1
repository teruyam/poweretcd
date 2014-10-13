function Get-EtcdSelfStatistics ($Server)
{
    Invoke-JsonRequest http://$($Server):7001/v2/stats/self

}