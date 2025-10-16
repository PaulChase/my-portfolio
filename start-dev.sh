#!/bin/bash

# 🚀 Portfolio Development Server Starter
# This script helps you quickly start working on your portfolio

echo "🎨 Starting Portfolio Development Environment..."
echo ""

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
    echo "✅ Dependencies installed!"
    echo ""
fi

# Check if Tailwind CSS build exists
if [ ! -f "dist/output.css" ]; then
    echo "🎨 Building Tailwind CSS..."
    npx tailwindcss -i ./src/input.css -o ./dist/output.css
    echo "✅ CSS built!"
    echo ""
fi

echo "🚀 Starting development server..."
echo ""
echo "📝 Tailwind is now watching for changes..."
echo "💡 Edit index.html and save to see changes"
echo ""
echo "🌐 To view your portfolio:"
echo "   1. Open index.html in your browser"
echo "   2. Or use Live Server extension in VS Code"
echo "   3. Or run: python3 -m http.server 8000"
echo ""
echo "⏹️  Press Ctrl+C to stop the server"
echo ""
echo "────────────────────────────────────────"
echo ""

# Start Tailwind in watch mode
npm run dev
