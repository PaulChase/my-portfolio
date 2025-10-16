# 🎨 Additional Features & Code Snippets

## 1. Parallax Scroll Effect

Add this to create parallax scrolling on the hero section:

```javascript
// Add to Alpine app init()
initParallax() {
    window.addEventListener('scroll', () => {
        const scrolled = window.pageYOffset;
        const parallaxElements = document.querySelectorAll('.parallax');
        parallaxElements.forEach(el => {
            const speed = el.dataset.speed || 0.5;
            el.style.transform = `translateY(${scrolled * speed}px)`;
        });
    });
}

// Then call in init()
this.initParallax();
```

HTML:

```html
<div class="parallax" data-speed="0.5">
	<!-- Your content -->
</div>
```

## 2. Dark/Light Mode Toggle

Add this button to your navbar:

```html
<button @click="toggleTheme()" class="w-10 h-10 flex items-center justify-center glass rounded-lg">
	<i class="fas" :class="isDark ? 'fa-sun' : 'fa-moon'"></i>
</button>
```

Alpine.js data:

```javascript
isDark: true,

toggleTheme() {
    this.isDark = !this.isDark;
    document.documentElement.classList.toggle('light');
    localStorage.setItem('theme', this.isDark ? 'dark' : 'light');
}
```

## 3. Scroll Progress Bar

Add at the top of your HTML:

```html
<div
	class="fixed top-0 left-0 h-1 bg-gradient-to-r from-cyan-500 to-purple-600 z-50 transition-all duration-300"
	:style="`width: ${scrollProgress}%`"
></div>
```

Alpine.js:

```javascript
scrollProgress: 0,
	// Add to init()
	window.addEventListener("scroll", () => {
		const windowHeight = document.documentElement.scrollHeight - window.innerHeight;
		this.scrollProgress = (window.pageYOffset / windowHeight) * 100;
	});
```

## 4. Smooth Page Load Animation

Add to your CSS:

```css
body {
	opacity: 0;
	animation: fadeIn 1s ease-in forwards;
}

@keyframes fadeIn {
	to {
		opacity: 1;
	}
}
```

## 5. Achievement/Stats Counter Animation

HTML:

```html
<div
	x-data="{ count: 0, target: 100 }"
	x-intersect="
        let interval = setInterval(() => {
            if (count < target) {
                count++;
            } else {
                clearInterval(interval);
            }
        }, 20)
    "
>
	<span x-text="count + '+'"></span>
</div>
```

## 6. Testimonials Carousel

```html
<div x-data="testimonials" class="relative">
	<div class="overflow-hidden">
		<div class="flex transition-transform duration-500" :style="`transform: translateX(-${currentIndex * 100}%)`">
			<template x-for="(testimonial, index) in testimonials" :key="index">
				<div class="min-w-full glass rounded-2xl p-8">
					<p x-text="testimonial.text" class="text-gray-300"></p>
					<h4 x-text="testimonial.author" class="font-bold mt-4"></h4>
				</div>
			</template>
		</div>
	</div>

	<button @click="prev()" class="absolute left-4 top-1/2">
		<i class="fas fa-chevron-left"></i>
	</button>
	<button @click="next()" class="absolute right-4 top-1/2">
		<i class="fas fa-chevron-right"></i>
	</button>
</div>
```

Alpine.js:

```javascript
Alpine.data("testimonials", () => ({
	currentIndex: 0,
	testimonials: [
		{ text: "Great work!", author: "John Doe" },
		{ text: "Amazing developer!", author: "Jane Smith" },
	],
	next() {
		this.currentIndex = (this.currentIndex + 1) % this.testimonials.length;
	},
	prev() {
		this.currentIndex = this.currentIndex === 0 ? this.testimonials.length - 1 : this.currentIndex - 1;
	},
}));
```

## 7. Magnetic Button Effect

CSS:

```css
.magnetic-button {
	transition: transform 0.3s ease;
}
```

JavaScript:

```javascript
document.querySelectorAll(".magnetic-button").forEach((button) => {
	button.addEventListener("mousemove", (e) => {
		const rect = button.getBoundingClientRect();
		const x = e.clientX - rect.left - rect.width / 2;
		const y = e.clientY - rect.top - rect.height / 2;

		button.style.transform = `translate(${x * 0.3}px, ${y * 0.3}px)`;
	});

	button.addEventListener("mouseleave", () => {
		button.style.transform = "translate(0, 0)";
	});
});
```

## 8. Mouse Trail Effect

JavaScript:

```javascript
const trail = [];
const trailLength = 20;

document.addEventListener("mousemove", (e) => {
	trail.push({ x: e.clientX, y: e.clientY });

	if (trail.length > trailLength) {
		trail.shift();
	}

	// Clear and redraw trail
	const canvas = document.getElementById("trail-canvas");
	const ctx = canvas.getContext("2d");
	ctx.clearRect(0, 0, canvas.width, canvas.height);

	trail.forEach((point, index) => {
		const opacity = index / trailLength;
		ctx.fillStyle = `rgba(139, 92, 246, ${opacity})`;
		ctx.beginPath();
		ctx.arc(point.x, point.y, 3, 0, Math.PI * 2);
		ctx.fill();
	});
});
```

HTML:

```html
<canvas id="trail-canvas" class="fixed inset-0 pointer-events-none"></canvas>
```

## 9. Skills Progress Bars

```html
<div x-data="{ progress: 0 }" x-intersect="progress = 90" class="mb-4">
	<div class="flex justify-between mb-2">
		<span>React.js</span>
		<span x-text="progress + '%'"></span>
	</div>
	<div class="h-2 bg-gray-800 rounded-full overflow-hidden">
		<div
			class="h-full bg-gradient-to-r from-cyan-500 to-purple-600 transition-all duration-1000"
			:style="`width: ${progress}%`"
		></div>
	</div>
</div>
```

## 10. Back to Top Button

```html
<button
	x-show="showBackToTop"
	@click="window.scrollTo({ top: 0, behavior: 'smooth' })"
	x-cloak
	class="fixed bottom-8 right-8 w-12 h-12 bg-gradient-to-r from-cyan-500 to-purple-600 rounded-full shadow-lg hover:shadow-2xl transition-all z-50 flex items-center justify-center"
>
	<i class="fas fa-arrow-up"></i>
</button>
```

Alpine.js:

```javascript
showBackToTop: false,
	// Add to init()
	window.addEventListener("scroll", () => {
		this.showBackToTop = window.pageYOffset > 300;
	});
```

## 11. Tilt.js-like 3D Effect (Pure CSS)

```css
.tilt-card {
	transform-style: preserve-3d;
	transition: transform 0.3s ease;
}

.tilt-card:hover {
	transform: perspective(1000px) rotateX(var(--rotateX, 0deg)) rotateY(var(--rotateY, 0deg));
}
```

JavaScript:

```javascript
document.querySelectorAll(".tilt-card").forEach((card) => {
	card.addEventListener("mousemove", (e) => {
		const rect = card.getBoundingClientRect();
		const x = e.clientX - rect.left;
		const y = e.clientY - rect.top;

		const centerX = rect.width / 2;
		const centerY = rect.height / 2;

		const rotateX = (y - centerY) / 10;
		const rotateY = (centerX - x) / 10;

		card.style.setProperty("--rotateX", `${rotateX}deg`);
		card.style.setProperty("--rotateY", `${rotateY}deg`);
	});

	card.addEventListener("mouseleave", () => {
		card.style.setProperty("--rotateX", "0deg");
		card.style.setProperty("--rotateY", "0deg");
	});
});
```

## 12. Loading Screen

```html
<div
	x-data="{ loading: true }"
	x-show="loading"
	x-init="setTimeout(() => loading = false, 2000)"
	class="fixed inset-0 bg-black z-50 flex items-center justify-center"
>
	<div class="text-center">
		<div class="w-16 h-16 border-4 border-purple-500 border-t-transparent rounded-full animate-spin mx-auto mb-4"></div>
		<p class="text-gray-400">Loading...</p>
	</div>
</div>
```

## 13. Reveal on Scroll with Stagger

```javascript
// Add to init()
const observer = new IntersectionObserver(
	(entries) => {
		entries.forEach((entry, index) => {
			if (entry.isIntersecting) {
				setTimeout(() => {
					entry.target.classList.add("visible");
				}, index * 100); // Stagger by 100ms
			}
		});
	},
	{ threshold: 0.1 }
);

document.querySelectorAll(".fade-in-stagger").forEach((el) => {
	observer.observe(el);
});
```

## 14. Text Scramble Effect

```javascript
class TextScramble {
	constructor(el) {
		this.el = el;
		this.chars = "!<>-_\\/[]{}—=+*^?#________";
		this.update = this.update.bind(this);
	}

	setText(newText) {
		const oldText = this.el.innerText;
		const length = Math.max(oldText.length, newText.length);
		const promise = new Promise((resolve) => (this.resolve = resolve));
		this.queue = [];

		for (let i = 0; i < length; i++) {
			const from = oldText[i] || "";
			const to = newText[i] || "";
			const start = Math.floor(Math.random() * 40);
			const end = start + Math.floor(Math.random() * 40);
			this.queue.push({ from, to, start, end });
		}

		cancelAnimationFrame(this.frameRequest);
		this.frame = 0;
		this.update();
		return promise;
	}

	update() {
		let output = "";
		let complete = 0;

		for (let i = 0, n = this.queue.length; i < n; i++) {
			let { from, to, start, end, char } = this.queue[i];

			if (this.frame >= end) {
				complete++;
				output += to;
			} else if (this.frame >= start) {
				if (!char || Math.random() < 0.28) {
					char = this.randomChar();
					this.queue[i].char = char;
				}
				output += `<span class="text-purple-400">${char}</span>`;
			} else {
				output += from;
			}
		}

		this.el.innerHTML = output;

		if (complete === this.queue.length) {
			this.resolve();
		} else {
			this.frameRequest = requestAnimationFrame(this.update);
			this.frame++;
		}
	}

	randomChar() {
		return this.chars[Math.floor(Math.random() * this.chars.length)];
	}
}

// Usage:
const scramble = new TextScramble(document.querySelector(".scramble-text"));
scramble.setText("Hello World");
```

## 15. Cursor Glow Effect

```css
.cursor-glow {
	position: fixed;
	width: 200px;
	height: 200px;
	border-radius: 50%;
	background: radial-gradient(circle, rgba(139, 92, 246, 0.3), transparent 70%);
	pointer-events: none;
	transform: translate(-50%, -50%);
	transition: opacity 0.3s;
	z-index: 9997;
}
```

JavaScript:

```javascript
const glow = document.createElement("div");
glow.className = "cursor-glow";
document.body.appendChild(glow);

document.addEventListener("mousemove", (e) => {
	glow.style.left = e.clientX + "px";
	glow.style.top = e.clientY + "px";
});
```

---

**Mix and match these features to create your perfect portfolio! 🎨✨**
