# ISR Portfolio Auto-Update Script
Write-Host "Updating ISR Web Design Portfolio..." -ForegroundColor Cyan

# Check if git is initialized
if (!(Test-Path .git)) {
    Write-Host "Error: Git not found in this folder!" -ForegroundColor Red
    Pause
    exit
}

# Add all changes
Write-Host "1. Adding changes..."
git add .

# Commit changes
$message = "Update portfolio with Sai Collections and YashuArts Apps - $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
Write-Host "2. Committing changes: $message"
git commit -m "$message"

# Push to GitHub
Write-Host "3. Pushing to GitHub..."
$branch = git branch --show-current
git push origin $branch

Write-Host ""
Write-Host "Success! Your website is being updated on GitHub." -ForegroundColor Green
Write-Host "Press any key to close..."
Pause
