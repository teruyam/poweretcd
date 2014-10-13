function Get-EtcdLeaderStatistics ($Server)
{
    Invoke-JsonRequest http://$($Server):4001/v2/stats/leader
}
