import os
import shutil

src_banner = "/Users/shisank_/.gemini/antigravity-ide/brain/0366a486-671b-4cd9-93d1-40376d3e9b1f/shisank_ai_banner_1784575202334.png"
src_profile = "/Users/shisank_/.gemini/antigravity-ide/brain/0366a486-671b-4cd9-93d1-40376d3e9b1f/shisank_avatar_1784575219621.png"

ws_dir = "/Users/shisank_/Desktop/Shisank93-main"
assets_dir = os.path.join(ws_dir, "assets")
os.makedirs(assets_dir, exist_ok=True)

with open(src_banner, "rb") as f_in:
    data_banner = f_in.read()

with open(os.path.join(ws_dir, "banner.png"), "wb") as f_out:
    f_out.write(data_banner)

with open(os.path.join(assets_dir, "banner.png"), "wb") as f_out:
    f_out.write(data_banner)

with open(src_profile, "rb") as f_in:
    data_profile = f_in.read()

with open(os.path.join(ws_dir, "profile.png"), "wb") as f_out:
    f_out.write(data_profile)

with open(os.path.join(assets_dir, "profile.png"), "wb") as f_out:
    f_out.write(data_profile)

print("SUCCESS: Copied banner.png and profile.png into workspace root and assets/")
