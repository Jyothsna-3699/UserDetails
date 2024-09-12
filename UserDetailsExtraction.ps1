# Define variables
$organization = "workasaservice"    # Replace with your organization name
$project = "Jyothsna"               # Replace with your project name
$team = "WaaS"                      # Replace with your team name
# Replace with your PAT
$pat = ""  
# Base64 encode PAT
$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$pat"))

# Make API call to get team capacity
$response = Invoke-RestMethod -Uri "https://dev.azure.com/workasaservice/Internal%20Projects/_sprints/capacity/Internal%20Projects%20Team/Internal%20Projects/Sprint%2014" `
                              -Method Get `
                              -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)}

# Output response
$response
#Save the response into CSV file
