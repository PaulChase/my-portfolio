# 🚀 Quick Setup Guide

## Prerequisites

- Node.js installed
- Basic knowledge of HTML/CSS
- Text editor (VS Code recommended)

## Installation

1. **Install Dependencies**

```bash
npm install
```

2. **Start Development Server**

```bash
npm run dev
```

This watches your files and rebuilds Tailwind CSS automatically.

## Customization Checklist

### 📝 Personal Information

#### In `index.html`:

- [ ] Line ~330: Update name "Ajonye Paul" to your name
- [ ] Line ~335: Update role description
- [ ] Line ~340: Update bio paragraph
- [ ] Line ~350-365: Update social media links
- [ ] Line ~370: Update CV download link
- [ ] Line ~875-920: Update contact information (email, phone, WhatsApp)

#### In `index.js`:

- [ ] Update `myProjects` array with your projects
- [ ] Add your project images to `/assets/` folder
- [ ] Update project descriptions, URLs, and tech stacks

### 🎨 Branding

#### Colors (in `index.html` styles):

```css
/* Current gradient: Cyan -> Purple -> Pink */
/* Find and replace: */
- Primary: #06b6d4 (cyan)
- Secondary: #8b5cf6 (purple)
- Accent: #ec4899 (pink)
```

#### Logo (in `index.html`):

- Line ~245: Change `&lt;AP /&gt;` to your initials
- Line ~980: Update footer logo

#### Fonts:

Current: Inter (body) + Space Grotesk (headings)
To change: Update Google Fonts link in `<head>`

### 📸 Assets

Replace these files in `/assets/`:

- `/assets/AJONYE PAUL MAIN RESUME.pdf` - Your CV
- Project images (referenced in `index.js`)
- Tech stack icons (if updating)

### 🔧 Configuration

#### `tailwind.config.js`:

- Already configured with custom animations
- Add more theme extensions if needed

#### `package.json`:

- Update project name, author, description

## File Structure

```
my-portfolio/
├── index.html          # Main HTML file (update this!)
├── index.js            # Projects data (update this!)
├── package.json        # Dependencies
├── tailwind.config.js  # Tailwind configuration
├── src/
│   └── input.css       # Tailwind source
├── dist/
│   └── output.css      # Compiled CSS (auto-generated)
└── assets/
    ├── images/         # Your images
    └── resume.pdf      # Your CV
```

## Testing

1. **Desktop**: Check all animations and cursor effects
2. **Mobile**: Test hamburger menu and touch interactions
3. **Tablet**: Verify responsive layouts
4. **Cross-browser**: Test in Chrome, Firefox, Safari

## Deployment

### Option 1: Netlify

1. Push to GitHub
2. Connect repository to Netlify
3. Build command: `npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify`
4. Publish directory: `.`

### Option 2: Vercel

1. Push to GitHub
2. Import project to Vercel
3. Auto-detects configuration
4. Deploy!

### Option 3: GitHub Pages

1. Build CSS: `npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify`
2. Push to GitHub
3. Enable GitHub Pages in repository settings
4. Select branch and save

## Troubleshooting

### CSS not updating?

```bash
# Stop the dev server (Ctrl+C)
# Delete the output file
rm dist/output.css
# Restart dev server
npm run dev
```

### Particles not showing?

- Check browser console for errors
- Ensure `index.html` has `x-data="app"` on body
- Verify Alpine.js is loaded

### Cursor effect not working?

- Only works on desktop (disabled on mobile)
- Check if `x-ref="cursorDot"` and `x-ref="cursorOutline"` exist
- Ensure Alpine.js is initialized

### Images not loading?

- Verify image paths in `index.js`
- Check `/assets/` folder contains all images
- Use correct file extensions

## Pro Tips

1. **Performance**: Compress images before adding to `/assets/`
2. **SEO**: Update `<title>` and add meta tags
3. **Analytics**: Add Google Analytics or similar
4. **Accessibility**: Test with screen readers
5. **Animations**: Reduce motion for accessibility (prefers-reduced-motion)

## Support

If you encounter issues:

1. Check browser console for errors
2. Verify all file paths are correct
3. Ensure Node.js and npm are up to date
4. Clear browser cache

---

**Happy coding! 🎉**
