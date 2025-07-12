# Portfolio Hub 🎨

A sleek animated landing page that showcases two different portfolio experiences with a dynamic central divider animation.

## ✨ Features

- **Split-screen design** with two distinct portfolio experiences
- **Animated central divider** with color-changing effects using Anime.js
- **Responsive layout** that adapts to mobile and desktop
- **Hover effects** with blur transitions and backdrop filters
- **Modern typography** with custom Google Fonts (Orbitron & Press Start 2P)

## 🎯 Portfolio Links

- **[Modern Portfolio](https://portfolio.pro.titos.tech/)** - Sleek, space-inspired modern UI
- **[Game Portfolio](https://portfolio.game.titos.tech/)** - Interactive web game built with Kaboom.js

## 🚀 Tech Stack

- **[HTML5/CSS3/JavaScript](#)** – Semantic structure, advanced styling, and interactive animations
- **[Anime.js](https://animejs.com/)** - Smooth animations library
- **[Vite](https://vitejs.dev/)** - Build tool and development server

## 🛠️ Development

### Prerequisites
- Node.js 18+
- npm

### Local Setup

```bash
# Clone the repository
git clone https://github.com/Mr-Titos/Portfolio-Hub.git
cd Portfolio-Hub

# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

### Available Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run build:clean  # Clean build (removes dist/ first)
npm run preview      # Preview production build
npm run test:build   # Test build locally (Linux/Mac)
npm run test:build:win # Test build locally (Windows)
```

## 🤖 Automated Deployment

This project features **fully automated deployment** with GitHub Actions:

- ✅ **Auto-build** on every commit to `main`
- ✅ **Auto-update** of the `dist/` folder
- ✅ **Webhook integration** for instant deployment
- ✅ **Zero manual intervention** required

Every time you push code changes, the system automatically:
1. Builds the project with Vite
2. Updates the `dist/` folder
3. Commits the changes
4. Triggers webhook for deployment

📋 **[View detailed documentation →](GITHUB_ACTIONS.md)**

## 📁 Project Structure

```
Portfolio-Hub/
├── index.html          # Main HTML file
├── style.css           # Main stylesheet
├── fonts.css           # Google Fonts imports
├── divider.js          # Animation logic
├── vite.config.js      # Vite configuration
├── dist/               # Built files (auto-generated)
├── public/assets/      # Static assets
├── scripts/            # Build test scripts
└── .github/workflows/  # GitHub Actions
```

## 📱 Browser Support

- ✅ Modern browsers (Chrome, Firefox, Safari, Edge)
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)
- ⚠️ Backdrop filters require modern browser support

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

**Made by [Titos](https://github.com/Mr-Titos)**