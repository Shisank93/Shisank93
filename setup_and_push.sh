#!/bin/bash
# Shisank Yadav - GitHub Profile Sync & Deployment Script

BRAIN_DIR="/Users/shisank_/.gemini/antigravity-ide/brain/0366a486-671b-4cd9-93d1-40376d3e9b1f"
REPO_DIR="/Users/shisank_/Desktop/Shisank93-main"

echo "===================================================="
echo "🚀 SYNCING ASSETS & PUBLISHING SHISANK YADAV GITHUB PROFILE"
echo "===================================================="

mkdir -p "$REPO_DIR/assets"

# Copy Banner and Profile Avatar
if [ -f "$BRAIN_DIR/shisank_ai_banner_1784575202334.png" ]; then
    cp "$BRAIN_DIR/shisank_ai_banner_1784575202334.png" "$REPO_DIR/banner.png"
    cp "$BRAIN_DIR/shisank_ai_banner_1784575202334.png" "$REPO_DIR/assets/banner.png"
    echo "✅ Banner image copied successfully!"
fi

if [ -f "$BRAIN_DIR/shisank_avatar_1784575219621.png" ]; then
    cp "$BRAIN_DIR/shisank_avatar_1784575219621.png" "$REPO_DIR/profile.png"
    cp "$BRAIN_DIR/shisank_avatar_1784575219621.png" "$REPO_DIR/assets/profile.png"
    echo "✅ Profile avatar copied successfully!"
fi

echo ""
echo "📋 Git Status:"
cd "$REPO_DIR" || exit 1
git add .
git commit -m "🔥 Upgrade to World-Class AI & ML Engineer Portfolio README"
echo ""
echo "🚀 To push changes to your GitHub profile repository (Shisank93/Shisank93), run:"
echo "    git push origin main"
echo "===================================================="
