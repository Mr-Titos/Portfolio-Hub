# 🤖 Automatisation du Build avec GitHub Actions

Ce repository utilise GitHub Actions pour automatiquement construire et mettre à jour le dossier `dist/` à chaque commit.

## 🔧 Configuration

### Workflows GitHub Actions

1. **`build-and-deploy.yml`** - Workflow simple qui :
   - Installe les dépendances
   - Exécute `npm run build`
   - Commit et push les changements du dossier `dist/` si nécessaire

2. **`advanced-build.yml`** - Workflow plus robuste qui :
   - Ignore les commits qui ne modifient que `dist/` (évite les boucles infinies)
   - Gère les conflits de merge automatiquement
   - Ajoute des commentaires sur les Pull Requests
   - Utilise des retry pour les push qui échouent

### 🚦 Déclenchement

Les workflows se déclenchent sur :
- ✅ Push sur la branche `main`
- ✅ Pull Request vers `main`
- ❌ Modifications uniquement dans `dist/` (ignorées pour éviter les boucles)

## 🛠️ Scripts Locaux

### Pour tester le build localement :

**Linux/Mac :**
```bash
npm run test:build
```

**Windows :**
```powershell
npm run test:build:win
```

### Autres commandes utiles :

```bash
# Build normal
npm run build

# Build avec nettoyage
npm run build:clean

# Développement
npm run dev

# Preview du build
npm run preview
```

## 📋 Fonctionnement

1. **Commit de code source** → GitHub Actions détecte le changement
2. **Installation** → `npm ci` pour installer les dépendances
3. **Build** → `npm run build` génère/met à jour `dist/`
4. **Vérification** → Vérifie s'il y a des changements dans `dist/`
5. **Commit automatique** → Si changements détectés, commit avec message `[skip ci]`
6. **Push** → Pousse les changements vers le repository

## ⚠️ Points importants

- Le message de commit contient `[skip ci]` pour éviter de redéclencher le workflow
- Le dossier `dist/` est **tracké** par Git (contrairement à la pratique habituelle)
- Les workflows utilisent `github-actions[bot]` comme auteur des commits automatiques
- En cas de conflit, le workflow advanced tente automatiquement un rebase

## 🔍 Monitoring

Vous pouvez suivre l'exécution des workflows dans l'onglet "Actions" de votre repository GitHub.

## 🛡️ Sécurité

- Utilise `GITHUB_TOKEN` automatique (pas besoin de Personal Access Token)
- Les workflows ne s'exécutent que sur les branches autorisées
- Évite les boucles infinies avec les filtres de paths
