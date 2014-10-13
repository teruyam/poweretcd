<#
.Synopsis
   Get version of etcd
.DESCRIPTION
   curl http://CoreOS1:4001/version
.EXAMPLE
   Get-EtcdVersion -Server CoreOS1
#>
function Get-EtcdVersion
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [string[]]
        $Server
    )

    Begin
    {
    }
    Process
    {
        foreach($item in $Server){
            $response = curl "http://$($item):4001/version"
            New-Object -Property @{
                "Server" = $item
                "Version" = $response.Content
            } -TypeName psobject
        }
    }
    End
    {
    }
}