#!/bin/bash
# Downloads the images and icons from your Figma file into ./assets
# Run once from this folder:  bash get-assets.sh
# The Figma links expire on Nov 30, 2026 . After that, ask Claude for fresh ones.

cd "$(dirname "$0")" && mkdir -p assets && cd assets
B=https://www.figma.com/api/mcp/asset
get() { curl -fsSL -o "$1" "$B/$2" && echo "✓ $1" || echo "✗ $1 failed"; }

get avatar-hero.png         e84b5f0f-0dd7-4dce-ab44-d821fdcf871a.png
get evernest-mockup.png     98696583-dbcd-46f6-b411-6e52fd278d61.png
get evernest-dashboard.png  c558b17f-31fa-4f6c-a99e-22871a6f951d.png
get savey-mockup.png        ba368144-91d0-434a-94cc-9c81b868da85.png
get ribbon.png              e4e5f233-c732-468f-bbe8-2080cfdad969.png
get adda-2026.png           5c609bc3-18de-4a72-a8ab-273bfd16cb45.png
get placeholder-icon.png    4197d9a3-e490-4e21-a805-16332da8e9b1.png
get avatar-footer.png       f98a0459-c27f-4d24-b056-139caa98bed2.png

# Savey case study
mkdir -p savey
get savey/hero.png                fb8ef047-1c49-4607-af11-fd4d7c262aa5.png
get savey/phone-frame.png         6e29f7bc-df47-4d61-8e6f-db1a1c41dcda.png
get savey/onboard-diet.png        aedf4b76-b4b3-4c3e-b63e-35a9c12d8ccb.png
get savey/onboard-allergies.png   56c1ae67-2c41-4efb-a3f0-d752a34d77cf.png
get savey/onboard-skip.png        df41e40c-bcdb-4f44-ac3b-5085697cc880.png
get savey/trust-discover.png      3c7da3ca-161d-40ad-b16b-692508c68660.png
get savey/trust-details.png       83cd00ef-8eeb-4c91-bcc8-0c4569cc2dfc.png
get savey/trust-order.png         23224583-ef97-48aa-8b84-74825b8516f6.png
get savey/reward-earning.png      2c770eb6-85b8-4a94-aab2-9ffe9b2c9590.png
get savey/reward-rewards.png      eb692a67-87a0-4f48-a8c7-3a1b752085e9.png
get savey/reward-popup.png        c19ac6b3-dad7-4dcc-9919-f052d6a88b0b.png
get savey/after-steps.png         c80a0631-0959-4934-9818-58abba406f62.png
get savey/showcase.png            fbd07aac-2bc9-41ea-bc39-2645374a5bec.png

# Evernest case study
mkdir -p evernest
get evernest/elvin.png               099d9653-118f-42ae-8cd3-09d0079a75eb.png

echo "Done. Open index.html to preview."
