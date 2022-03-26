$Uri = "http://localhost:5266/weatherforecast"

$headers = @{
    'Ocp-Apim-Subscription-Key' = ''
    'Authorization' = "Bearer $($respone.access_token)"
    'Api-version' = '1.0'
}

Write-Host "The token is $($respone.access_token)";

$respone = Invoke-RestMethod `
    -Uri $Uri `
    -Method "GET" `
    -Headers $headers `
    -SkipCertificateCheck