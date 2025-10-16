# 🚀 Quick Reference Card

## 🎨 Color Variables (Find & Replace)

```css
Cyan:   #06b6d4
Purple: #8b5cf6
Pink:   #ec4899
```

## 📝 Quick Customization Checklist

### High Priority (Do First):

- [ ] Update your name (search: "Ajonye Paul")
- [ ] Update role description
- [ ] Update bio/about text
- [ ] Change social media links
- [ ] Update CV file path
- [ ] Update contact info (email, phone, WhatsApp)
- [ ] Change logo/initials (&lt;AP /&gt;)

### Medium Priority:

- [ ] Add your project images
- [ ] Update projects in `index.js`
- [ ] Replace tech stack icons (optional)
- [ ] Update meta tags for SEO
- [ ] Test all links

### Low Priority:

- [ ] Customize colors
- [ ] Adjust animations
- [ ] Add new sections
- [ ] Implement bonus features

## 🔧 Common Commands

```bash
# Start development
npm run dev

# Build for production
npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify

# Update browserslist
npx update-browserslist-db@latest
```

## 📂 Files to Edit

| File                 | What to Change                |
| -------------------- | ----------------------------- |
| `index.html`         | Name, bio, links, text        |
| `index.js`           | Projects data                 |
| `/assets/`           | Images, CV file               |
| `tailwind.config.js` | Colors, animations (advanced) |

## 🎯 Key Alpine.js Data

```javascript
// Main app
x-data="app"

// Projects filtering
x-data="projects"

// Contact form
x-data="contact"
```

## 💫 Animation Classes

```html
<!-- Fade in on scroll -->
<div class="fade-in" x-intersect="$el.classList.add('visible')">
	<!-- Glassmorphism -->
	<div class="glass glass-hover">
		<!-- Gradient text -->
		<span class="gradient-text">
			<!-- 3D card -->
			<div class="card-3d">
				<!-- Floating -->
				<div class="float">
					<!-- Neon button -->
					<button class="neon-button"></button>
				</div></div
		></span>
	</div>
</div>
```

## 🐛 Troubleshooting

| Issue              | Solution                                       |
| ------------------ | ---------------------------------------------- |
| CSS not updating   | Stop server, delete `dist/output.css`, restart |
| Cursor not showing | Only works on desktop, check Alpine.js loaded  |
| Particles missing  | Check `x-data="app"` on body tag               |
| Images not loading | Check file paths in `index.js`                 |
| Form not working   | Check WhatsApp number format                   |

## 📱 Test Checklist

- [ ] Desktop (Chrome, Firefox, Safari)
- [ ] Tablet (landscape & portrait)
- [ ] Mobile (iOS & Android)
- [ ] All links work
- [ ] Form submits correctly
- [ ] Animations smooth
- [ ] Images load
- [ ] Responsive layouts correct

## 🚀 Deployment Quick Guide

**Netlify:**

1. Push to GitHub
2. New site from Git
3. Build: `npx tailwindcss -i ./src/input.css -o ./dist/output.css --minify`
4. Publish dir: `.`

**Vercel:**

1. Push to GitHub
2. Import project
3. Auto-detects config
4. Deploy!

**GitHub Pages:**

1. Build CSS locally
2. Commit & push
3. Settings → Pages
4. Enable & deploy

## 🎨 Section IDs (for navigation)

```html
#home #about #services #skills #projects #contact
```

## 📊 Important Line Numbers

| Content    | Line Range |
| ---------- | ---------- |
| Navigation | 240-285    |
| Hero       | 288-370    |
| About      | 407-470    |
| Services   | 475-540    |
| Skills     | 545-650    |
| Projects   | 655-770    |
| Contact    | 775-940    |
| Footer     | 945-970    |
| Scripts    | 975-1100   |

## 🎭 Animation Timings

- Typing speed: 50-100ms per char
- Hover transitions: 300ms
- Scroll fade-in: 600ms
- Particle float: 20s
- Gradient flow: 3s

## 💡 Pro Tips

1. Compress images (< 200KB each)
2. Test forms before deployment
3. Use real projects, not placeholders
4. Keep animations subtle
5. Mobile-first development
6. Test on slow connections

---

**Print this or keep it open while customizing!** 📌
