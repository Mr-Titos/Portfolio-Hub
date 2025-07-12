# Script PowerShell pour tester le build localement avant de pousser
Write-Host "🚀 Test du build local..." -ForegroundColor Green

# Vérifier si npm est installé
try {
    npm --version | Out-Null
} catch {
    Write-Host "❌ npm n'est pas installé" -ForegroundColor Red
    exit 1
}

# Installer les dépendances si nécessaire
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 Installation des dépendances..." -ForegroundColor Yellow
    npm install
}

# Nettoyer le dossier dist existant
if (Test-Path "dist") {
    Write-Host "🧹 Nettoyage du dossier dist..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force "dist\*"
}

# Construire le projet
Write-Host "🔨 Construction du projet..." -ForegroundColor Yellow
npm run build

# Vérifier si le build a réussi
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Build réussi!" -ForegroundColor Green
    Write-Host "📁 Contenu du dossier dist:" -ForegroundColor Cyan
    Get-ChildItem -Path "dist" -Force | Format-Table
    
    # Vérifier les changements Git
    $gitStatus = git status --porcelain dist/
    if (-not $gitStatus) {
        Write-Host "ℹ️ Aucun changement dans dist/" -ForegroundColor Blue
    } else {
        Write-Host "📝 Changements détectés dans dist/:" -ForegroundColor Yellow
        git status dist/
    }
} else {
    Write-Host "❌ Le build a échoué" -ForegroundColor Red
    exit 1
}

Write-Host "🎉 Test terminé avec succès!" -ForegroundColor Green
