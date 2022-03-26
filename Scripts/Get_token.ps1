$clientSecret = "<paste secret here>";
$tenantId = "49ab38d6-5434-441d-b3ba-a9c3ed95610d"
$clientId = "18d4fa8e-d5a2-446e-a111-04701e0de11b"
$Uri = "https://login.microsoftonline.com/$tenantId/oauth2/token/"

$body = @{
    'grant_type' = 'client_credentials'
    'client_id' = $clientId
    'client_secret' = $clientSecret
    'resource' = $clientId
}

Invoke-RestMethod `
    -Uri $Uri `
    -Method "POST" `
    -ContentType "application/x-www-form-urlencoded" `
    -Body $body