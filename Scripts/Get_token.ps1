$clientSecret = "GwJ7Q~7TJpohh8-TAR1Q1viCoRxcAOAeIr9s6";
$tenantId = "49ab38d6-5434-441d-b3ba-a9c3ed95610d"
$clientId = "18d4fa8e-d5a2-446e-a111-04701e0de11b"
$scope = "api://18d4fa8e-d5a2-446e-a111-04701e0de11b/.default"
$Uri = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token/"

$body = @{
    'grant_type' = 'client_credentials'
    'client_id' = $clientId
    'client_secret' = $clientSecret
    'scope' = $scope
}

Invoke-RestMethod `
    -Uri $Uri `
    -Method "POST" `
    -ContentType "application/x-www-form-urlencoded" `
    -Body $body