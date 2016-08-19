function Invoke-JsonRequest ([string]$Uri)
{
    $response = Invoke-WebRequest $Uri
    ConvertFrom-Json $response.Content
}
