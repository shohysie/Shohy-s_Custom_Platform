//////////////////////////////////////////////////////////////////////////////
/////////////Shohy's customized adjustment platform v0.4//////////////
//////////////////////////////////////////////////////////////////////////////

//////////////Descriptions//////////////

This platform dynamically loads modular modifications. It activates during combat and spellcasting to enable these adjustments, with virtually no compatibility issues.
All embedded modulars remain inactive by default and require manual enablement.
On maps where global scripts disabled (e.g., Ankheg Caves in BG1), the platform lets an invisible creature spawn to execute scripts. The creature doesn't occupy summon limits, but requires available spawn capacity to appear.
The platform automatically deactivates post-combat to conserve game resources.
A permanent blue button appears in the protagonist's innate ability bar on his first combat. Use it to toggle settings of the platform and each module, or to read detailed module documentation.

Current Modules:
1. Extra modifiers of Intelligence/Wisdom/Charisma.
2. Enhanced Enemies (Enemy stats grow with protagonist XP); Kill XP granted to last attacker.
3. Weapon Styles Rebalance, and Detailed Adjustments for Weapon Types (NOTE: Incompatible with legacy Weapon Style Rebalance mods);
4. Enemies cast innate abilities, and elevate their levels with the protagonist.
5. Increasing AC and Hit Values for all Creatures (to prevent the AC modifier from becoming meaningless after hitting the -20 lower limit).

Platform Shutdown: Disables all modules except permanent creature effects.

//////////////Version History///////////////

v0.4
Added French version.
Streamlined some files and scripts.

[Enhanced Enemies (Enemy stats grow with protagonist XP)]
Enemy stat boosts now last 10 minutes, and automatically reapply when duration expires.
Fixed issue where enemy enhancements would not reapply on Difficulty 2 and 3.
Added HP overflow prevention.

[Enemies cast innate abilities, and elevate their levels with the protagonist]
Resolve the issue where some enemies are unable to use their abilities because their AI's set to attack continuously.
Enemy HP changes are now applied simultaneously with the "Enhanced Enemies" module to avoid double HP growth.
New enemy abilities added: Thieves can set traps, Clerics can cast Chaos War, Druids can cast Werewolf Greater Form and Animal Spirit Summoning, Undead can cast Curse, Animals can cast Beast Rage.

[Weapon Styles Rebalance]
Fixed a bug where one-handed Cleave could sometimes strike three times in a row.
Fixed an issue where Weapon Styles Rebalance settings could not be configured when only the "Weapon Styles Rebalance" module was installed without the "More proficiency points" component.
When Grip Throw or Hook fail due to high enemy strength, a warning message is now displayed.
Shield Bash range reduced from 5 feet to 4 feet.
Removed the function that displays the "Heroism" icon on character portraits when Weapon Style Rebalance is active.
If the special module adapted for EEex is installed: After investing 5 ranks in Two-Weapon Style, not only is the main-hand APR penalty removed, but the off-hand also gains a 50% (at rank 2) / 100% (at rank 5) chance per round to make an extra attack (simulated off-hand attack, requires a successful hit with a valid weapon).
If the special module adapted for EEex is installed: Cleave now triggers only once per round (twice when hasted), applying the weapon's full attack effects (not just damage) to all enemies in the area, and will not trigger when there is only a single enemy nearby.
If the special module adapted for EEex is installed: Option to use weapon proficiency ranks to determine the probability of weapon detail effects.

v0.3
All filenames changed to start with "SY#" for compatibility. 
New Module: Increasing AC and Hit Values for all Creatures. Recommended when AC modifiers reach the -20 lower limit. Suitable for game versions with more methods of reducing AC from various MODs.

[Global Adjustment Platform]
Disabled by default, with added options for manual enabling/disabling. All modules are also disabled by default and require manual activation.
If the protagonist is changed in multiplayer games, the platform's settings button will appear on the new protagonist.
The platform's settings button can now be used while silenced.

[Extra modifiers of Intelligence/Wisdom/Charisma]
Fixed the issue where manually disabling the additional adjustments for singing and dancing was ineffective.
Intelligence can now modify casting speed.
Caster level modifier, casting speed modifier, and Wisdom's spell resistance can be configured separately.

[Enhanced Enemies (Enemy stats grow with protagonist XP)]
Fixed the issue of insufficient enemy stat increases.
Enemies now gain at least 10/20/50 HP (for the three difficulty options) and slight increases in other stats.

[Weapon Styles Rebalance]
No longer automatically deducts proficiency points; requires manual activation.
Spinning Slash will not hit neutrals.
Critical hit effect for piercing weapons removed (to avoid overriding other critical effects), replaced with bleeding and incapacitation.
Grip Throw now has priority over Hook and Stunning Blow; if it fails, Hook or Stunning Blow may trigger.
When dual-wielding, effect chance is reduced but the interval between effects is also shorter.

[Enemies cast innate abilities, and elevate their levels with the protagonist]
Reduced the number of scripts that need modification, speeding up installation.
Enemy abilities slightly adjusted: Mages gain some protective spells, Undead gain Ghoul Touch, etc.

v0.22

[Weapon Styles Rebalance]
Avoid frequent reminders in the EEex environment: "You cannot cast multiple instances of the same contingency spell on yourself."

v0.21

[Weapon Styles Rebalance]
Shield Bash cannot be cast by creatures under Sanctuary, nor can it hit creatures under Sanctuary, Mirror Image, or Stoneskin.
Mirror Image protects against Grip Throw, Thrust, Stunning Blow, Hook, and Limb Strike. Stoneskin/Ironskin protects against Thrust, Stunning Blow, Cleave, and Limb Strike.

v0.2

[Global Adjustment Platform]
Fixed platform malfunction on maps where global scripts fail to execute.

[Extra modifiers of Intelligence/Wisdom/Charisma]
Fixed unintended bonus stacking.
Fixed bonus failure during Bard songs/Shaman dances.
Shaman CHA modifiers now apply to AC during dances (including negative modifiers).

[Enemy stats grow with protagonist XP]
"Enemy Enhancement Level" = (Level of a pure-class fighter with protagonist's XP) ÷ 2; After 8M XP: +1 level per 500k XP (capped at Lv40 at 18M XP).
Enemy stat boosts now apply as 5-minute temporary effects (reapplied if in combat).
Kill XP cap: Max 500 XP per level.

[Weapon Styles Rebalance]
Added option to toggle Heroism icon on portrait when active.
Attack Effect Priority (only one effect per attack, regardless of weapon setup): Cleave > Thrust > Limb Strike > Stunning Blow > Hook.
Single Weapon: Full effect chance; +1/+2 AC/THAC0 bonus when solo (no enemy within 4ft) at ★/★★.
Sword & Shield: Effect chance halved.
Two-Weapon: Effect chance halved but frequency increased.
Added critical damage for piercing weapons.
Added "Limb Strike" effect for clubs/staves.
Warhammers: Hook effect removed (retains Stunning Blow).
Cleave: attacker-centered circular AoE (larger radius for two-handed), fixed 50% proc rate for all swords.
Cleave no longer damages primary target, and no longer double-hits on critical hit, but also no longer reduces direct damage.
Hook: Stun effect removed.
Grip Throw slightly enhanced; prioritized in attack sequence (may follow with Hook/Stunning Blow if failed).
Grip Throw and Stunning Blow now prioritize knocking enemies down over stunning, unless the target is immune to unconsciousness. Unconscious targets won't immediately stand when hit.
Fixed "Disable Enemy Weapon Details" incorrectly disabling Enemy Weapon Styles.
Fixed Rogue-classes unable to make an additional Save vs. Death after failed Breath Saves against Hook or Grip Throw.

[Enemies elevate their levels with the protagonist]
Removed the component "Fixing Saving Throw BUG for Legacy of Bhaal difficulty" (now compatible with the separate Legacy of Bhaal Fix MOD).
Fixed unchanged enemy levels, attacks per round, and save values.
Some minor optimizations.