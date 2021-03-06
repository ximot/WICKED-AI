# Current version 2.2.6
Type | Description
------------: | :------------
`enhancement` | Mission objects and crates spawn from compact arrays. Two new missions. Additional code auditing and optimization.
`enhancement` | New options: Godmode mission objects, ai and loot multipliers, ai killfeed, avoid safezones, Reward vehicle gunners.

## Version 2.2.5
Type | Description
------------: | :------------
`enhancement` | Due to reports of poor performance on high population servers, this update is mostly code optimization.
`enhancement` | There are some new features included that are listed in the epochmod.com forum topic.

## Version 2.2.4
Type | Description
------------: | :------------
`enhancement` | Overpoch auto-detect. This version detects the Overwatch mod and adjusts accordingly.
`enhancement` | Added the option to use a static position for regular missions rather than use the dynamic positions.

## Version 2.2.3
Type | Description
------------: | :------------
`enhancement` | Streatman's new attachment system L85 and SVD models.
`enhancement` | iBen's mission auto claim addon.
`enhancement` | Two new options for mission vehicle keys: key in crate & key in vehicle gear.
`feature` | Optional dynamic text mission announcements.
`feature` | ZSC compatible remote message system using a modified version of Salival's remote_message.sqf
`bug` | Minor bug fixes with missions.

## Version 2.2.2
Type | Description
------------: | :------------
`enhancement` | Integrated Caveman's mission pack. @worldwidesorrow
`enhancement` | Optional AI counter in mission marker loops. @worldwidesorrow
`enhancement` | ZSC check wallet option. @worldwidesorrow
`enhancement` | Optional mission static spawn points. @worldwidesorrow
`enhancement` | Updated with 1.0.6+ classnames in weapon arrays and vehicles. @worldwidesorrow
`enhancement` | Pistol spawning in crates. @worldwidesorrow

## Version 2.2.1
Type | Description
------------: | :------------
`enhancement` | Added support for Epoch 1.0.6 @ebayShopper

## Version 2.2.0
Type | Description
------------: | :------------
`enhancement` | Added the Bandit Patrol hero mission by Havoc302 @Jossy
`enhancement` | Added multiple mission support, run as many missions as you want @Jossy
`enhancement` | Removed the need for ammunition classnames in the AI/Loot weapon arrays @Jossy
`feature` | Added new dynamic patrol type missions
`feature` | Native Linux server support @BangL
`feature` | Added the ability to make Hero AI friendly toward Hero players and vice versa for Bandits @Jossy
`feature` | Added the ability to lock mission vehicles with keys on AI @Jossy
`feature` | Added the possibility of announcing missions over the radio

## Version 2.1.4
Type | Description
------------: | :------------
`bug` | Fixed problem with GuerillaCacheBox_EP1 not spawning

## Version 2.1.3
Type | Description
------------: | :------------
`bug` | Fixed typo in Mayors Mansion mission @Jossy

## Version 2.1.2
Type | Description
------------: | :------------
`enhancement` | Added output variable to all unit group spawns @Jossy
`enhancement` | Position the mayor inside a random room until player arrives @Jossy
`bug` | Fixed bad vehicle on "none" backpack @Jossy

## Version 2.1.1
Type | Description
------------: | :------------
`bug` | Fixed crate despawning @f3cuk

## Version 2.1.0
Type | Description
------------: | :------------
`feature` | Added Hero and Bandit AI support @Jossy
`feature` | Added possibility to add AI skin to inventory
`feature` | Added posibily of finding a high value item in any crate
`feature` | All new President in Town mission @Jossy / @f3cuk
`enhancement` | Optimized code for better performance
`enhancement` | Overal cleanup and code restructure
`enhancement` | Crate content spawns on mission objective achieved
`enhancement` | Redone all the missions to included dynamic loot
`enhancement` | Added new type of mission objective, assassination! @Jossy
`enhancement` | Added Bandit missions @Jossy / @f3cuk
`enhancement` | Turned on landmines, beware! @Jossy
`enhancement` | Changed the way damage and fuel values are read from config, fuel will now be random per vehicle @Jossy
`enhancement` | Added min/max damage values for published vehicles in config @Jossy
`enhancement` | Map markers now instantly clear once mission is cleared @Jossy
`enhancement` | Cleaned up the vehicle spawn code, vehicles now generate damage taken @Jossy
`enhancement` | Vehicles will only be saved to the database when they are entered @Jossy
`enhancement` | Changed mission marker colors to resemble mission difficulty @Jossy
`bug` | Removed tank traps due to stupid AI engaging them @Jossy
`bug` | Fixed typos in dynamic ammo box, ItemEpinephin(e) and trying to spawn ItemKeyKit as magazine @Jossy

## Version 2.0.5
Type | Description
------------: | :------------
`bug` | Fixed missing ; on ikea_convoy.sqf

## Version 2.0.4
Type | Description
------------: | :------------
`bug` | Fixed bug with tanktraps not disappearing on Ikea mission

## Version 2.0.3
Type | Description
------------: | :------------
`bug` | Fixed bug with tanktraps not disappearing on MV-22 mission

## Version 2.0.2
Type | Description
------------: | :------------
`bug` | Fixed bug with nightvision on paratroops

## Version 2.0.1
Type | Description
------------: | :------------
`bug` | Fixed bug with roadflare on mission succes

## Version 2.0.0
Type | Description
------------: | :------------
`enhancement` | Major code overhaul and folder structure change
`feature` | Added possibility of rotating static mission per map
`feature` | Added possibility of tanktrapping missions @f3cuk / @nerdalertk
`feature` | Added possibility of minefielding missions
`feature` | Added nightvision to AI at night @nerdalertdk
`feature` | Added possibility for different type of missions (capture the crate / kill all ai)
`feature` | Eased up mission coding, hopefully allowing more people to join in and create new missions
`enhancement` | Randomized the type of static weapon to spawn @nerdalertdk
`enhancement` | Switched missiontype to "kill al ai" on the easy missions
`enhancement` | Added option to clean gear on roadkilled ai @nerdalertdk
`enhancement` | Added option to spawn smoke/flare (daytime/nighttime) on mission complete @nerdalertdk / @f3cuk
`enhancement` | Added option in % chance to destruct weapons on roadkill @nerdalertdk
`enhancement` | Added option to not save vehicles to database
`bug` | Fixed some incorrect varnames @osuapoc / @nerdalertdk
`bug` | Less chance of AI killing eachother @nerdalertdk

## Version 1.9.3
Type | Description
------------: | :------------
`enhancement` | Normalized the use of Random throughout, when you want something random, use "Random" and not "Random" or ""
`enhancement` | Implemented custom_ai_skill throughout. In the future use either "easy", "medium", "hard", "extreme" or "Random" to define a skillset. Numeric skillsets will fallback on "Random".
`enhancement` | Added IsServer checks on all files that could possibly be used in a harmfull manner (will probably roll this out on more files)
`enhancement` | Changed the custom_spawns.sqf file with some new descriptions
`enhancement` | the missions to make proper use of "Random"
`enhancement` | Changed weapon array names to logical ones
`enhancement` | Changed heli and vehicle patrol with possibility of random skill
`bug` | Fixed mayors mansion typo
`bug` | Fixed added _aicskill private var vehicle_patrol.sqf

## Version 1.9.2
Type | Description
------------: | :------------
`bug` | Fixed box on medi camp missions

## Version 1.9.1
Type | Description
------------: | :------------
`bug` | Fixed skillset on missions

## Version 1.9.0
Type | Description
------------: | :------------
`new feature` | Added possibility to blacklist certain area's (default set stary)
`enhancement` | General code cleanup including removal of unused private vars
`enhancement` | Overhaul making missions more dynamic
`enhancement` | Equipped more missions with dynamic loot
`enhancement` | Updated the dynamic loot arrays with more items
`enhancement` | Added difficulty levels to mission titles
`enhancement` | Re-added custom spawns as per request
`bug` | Fixed armed military mission with M2 spawning inside eachoter
`bug` | Fixed crashed blackhawk with loot crate spawning inside helicopter

## Version 1.8.0
Type | Description
------------: | :------------
`new feature` | Randomized clothes
`enhancement` | Customized loot
`enhancement` | Tried to nerve the 50 cals a bit, making them less accurate
`enhancement` | Changed weapons
`enhancement` | Improved vehicles
`enhancement` | Changed skill settings
`enhancement` | Added dynamic loot on Weapon cache missions
`bug` | Fixed some missions
`bug` | Fixed the heli para backpack issue
`bug` | Fixed the heli para spawning in after the mission has already been done
`removal` | Removed the C130 mission cause i cant seem to fix the glitching
`removal` | Removed EMS cache cause its practically the same as Weapon cache
