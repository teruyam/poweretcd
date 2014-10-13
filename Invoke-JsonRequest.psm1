function Invoke-JsonRequest ([string]$Uri)
{
    $response = curl $Uri
    ConvertFrom-Json $response.Content
}