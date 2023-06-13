# v3.4.1 - Immersive Consumption Part 2 (13 July 2023)
this actually started as v3.2 but there were a bunch of changes and I couldn't be bothered splitting them into different versions so just have this big changelog

## Common Mods
### Added
- BYG Crates [0.7.0]
- Chalk [1.4.2]
- Cataclysm Boss Bar [1.0.1]
- L_Ender's Cataclysm [0.51]
- Lightspeed [1.0.2]
- MmmMmmMmmMmm [1.5.2]
- Ok Zoomer [1.1.1]
- Traveler's Titles [2.1.1]
- YUNG's API [2.2.9]
### Updated
- Cold Sweat [2.2-b04a -> 2.2-b04d]
- Create [0.5.0i -> 0.5.1b]
- Create: Central Kitchen [1.3.0 -> 1.3.7]
- Create: Confectionery [1.0.8 -> 1.0.9]
- Create Deco [1.3.1 -> 1.3.3]
- Create: Misc & Things [2.0 -> 3.0]
- Drink Beer, By The Buckets [1.0.7 -> 1.0.8]
- Every Comp [1.5.15 -> 1.5.18]
- Farmer's Delight [1.2.0 -> 1.2.1]
- Macaw's Trapdoors [1.0.9 -> 1.1.0]
- Minecolonies [1.0.1329 -> 1.0.1428]
- Rubidium [0.5.5 -> 0.5.6]
- Supplementaries [1.5.16 -> 1.5.18]
### Removed
- Create: Steam 'n' Rails
- Flywheel


## Server Mods
### Added
- Brutal Bosses [5.8]
- Dungeon Crawl [2.3.12]
### Updated
- Canary [0.1.6 -> 0.2.1]
### Removed
- Memory Leak Fix


## Config
**Delightful**
- enabled copper & bone knife

**Dungeon Crawl**
- doubled spawner activation range

**L_Ender's Cataclysm**
- tweaked boss stats
  - [commit 1 (f93ba72)](https://github.com/RozarSMP/Township-and-Industry/commit/f93ba72d709f6e5e6d49bff1726d29f171dc4df1)
  - [commit 2 (0ef2c69)](https://github.com/RozarSMP/Township-and-Industry/commit/0ef2c69abc9fe53e0ae89fdb4cd4b851cdeb62b7)

**Ok Zoomer (server)**
- disable scroll zoom
- force classic zoom
- require spyglass


## Scripts
`pamsdelight.zs` - integration between Farmer's Delight and Pam's Harvestcraft, more info here: [Pam's Delight](https://github.com/RozarSMP/Township-and-Industry/wiki/Pam's-Delight)


## Datapack
- Township & Industry Fixes [revivalfix1.0 -> tifix] (in - house)
  + some integration for Pam's Harvestcraft and other parts of the modpack
  + Tree Bark can now be stripped from Oh The Biomes You'll Go blocks
  + removed Create: Things & Misc knives
  + Minecolonist cooks can no longer create flour or dough, but Bakers can now make pam's dough, cocoa powder, and raw pasta


## Other
removed some excess configs in the configs folder (forgot to .gitignore woops)
