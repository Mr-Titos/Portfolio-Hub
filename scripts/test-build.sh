#!/bin/bash

# Script pour tester le build localement avant de pousser
echo "🚀 Test du build local..."

# Vérifier si npm est installé
if ! command -v npm &> /dev/null; then
    echo "❌ npm n'est pas installé"
    exit 1
fi

# Installer les dépendances si nécessaire
if [ ! -d "node_modules" ]; then
    echo "📦 Installation des dépendances..."
    npm install
fi

# Nettoyer le dossier dist existant
if [ -d "dist" ]; then
    echo "🧹 Nettoyage du dossier dist..."
    rm -rf dist/*
fi

# Construire le projet
echo "🔨 Construction du projet..."
npm run build

# Vérifier si le build a réussi
if [ $? -eq 0 ]; then
    echo "✅ Build réussi!"
    echo "📁 Contenu du dossier dist:"
    ls -la dist/
    
    # Vérifier les changements Git
    if git diff --quiet dist/; then
        echo "ℹ️ Aucun changement dans dist/"
    else
        echo "📝 Changements détectés dans dist/:"
        git status dist/
    fi
else
    echo "❌ Le build a échoué"
    exit 1
fi

echo "🎉 Test terminé avec succès!"
