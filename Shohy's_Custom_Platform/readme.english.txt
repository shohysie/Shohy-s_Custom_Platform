//////////////////////////////////////////////////////////////////////////////
/////////////Shohy's customized adjustment platform v0.21///////////////
//////////////////////////////////////////////////////////////////////////////

//////////////Descriptions//////////////

This platform dynamically loads modular modifications. It activates during combat and spellcasting to enable these adjustments, with virtually no compatibility issues.
On maps where global scripts disabled (e.g., Ankheg Caves in BG1), the platform lets a invisible creature spawns to execute scripts. The creature doesn't occupy summon limits, but requires available spawn capacity to appear.
The platform automatically deactivates post-combat to conserve game resources.
A permanent blue button appears in the protagonist's innate ability bar on his first combat. Use it to toggle settings of the platform and each module, or to read detailed module documentation.

Current Modules:
1. Extra modifiers of Intelligence/Wisdom/Charisma.
2. Enemy stats grow with protagonist XP; Kill XP granted to last attacker.
3. Weapon Styles Rebalance, and Detailed Ajustments for Weapon Types (NOTE:  Incompatible with legacy Weapon Style Rebalance mods);
4. Enemies cast innate abilities, and elevate their levels with the protagonist.

Platform Shutdown: Disables all modules except permanent creature effects.

//////////////Version History///////////////

v0.21

[Weapon Styles Rebalance]
• Shield Bash cannot be cast by creatures under the effect of Sanctuary, nor can it hit creatures under the effect of Sanctuary, Mirror Image and Stone Skin.
• Mighty Blow, Limb Strike and Cleave can't affect creatures with Stone Skin.
• Trip Attack, Mighty Blow, Hook and Limb Strike can't affect creatures with Mirror Image.

v0.2

[Global Adjustment Platform]
• Fixed platform malfunction on maps where global scripts fail to execute.

[Extra modifiers of Intelligence/Wisdom/Charisma]
• Fixed unintended bonus stacking
• Fixed bonus failure during Bard songs/Shaman dances
• Shaman CHA modifiers now apply to AC during dances (including negative modifiers)

[Enemy stats grow with protagonist XP]
• "Enemy Enhancement Level" = (Level of a pure-class fighter with protagonist's XP) ÷ 2; After 8M XP: +1 level per 500k XP (capped at Lv40 at 18M XP)
• Enemy stat boosts now apply as 5-minute temporary effects (reapplied if in combat)
• Kill XP cap: Max 500 XP per level

[Weapon Styles Rebalance]
• Added an option to toggle Heroism icon on portrait when active
• Attack Effect Priority (Only one effect per attack, regardless of weapon setup): Cleave > Thrust > Limb Strike > Mighty blow > Hook
• Single Weapon: Full effect chance; +1/+2 AC/THAC0 bonus when solo (no enemy within 4ft) at ★/★★
• Sword & Shield: Effect chance halved
• 2-Weapon: Effect chance halved but frequency increased
• Added critical damage for piercing weapons
• Added "Limb Strike" effect for clubs/staves
• Warhammers: Hook effect removed (retains Mighty blow)
• Cleave: attacker-centered fan-shaped/circular AoE for 1-Handed/2-Handed; fixed 50% proc rate for all swords
• Cleave no longer damages primary target, and even no double-hits on critical hit, but doesn't reduce direct damage
• Hook: Stun effect removed
• Trip Attack: Slightly enhanced; prioritized in attack sequence (may follow with Hook/Bludgeon if failed)
• Trip Attack and Mighty Blow now prioritize knocking enemies down over causing Stun, unless the target is immune to Unconscious. The unconscious targets won't stand immediately when hit.
• Fixed "Disable Enemy Weapon Details" incorrectly disabling Enemy Weapon Styles.
• Fixed Rogue-classes unable to make once more Save vs. Death after failed Breath Saves against Hook/Trip Attack.

[Enemies elevate their levels with the protagonist]
• Removed the component "Fixing Saving throws BUG for Lecgacy of Bhaal difficulty"  (now compatible with the separate Legacy of Bhaal Fix MOD)
• Fixed unchanged enemy levels, attacks per round, and save values
• Some minor optimizations