 Pathway Of The Damned<br>
<br>
 Changelog V1, Release<br>
<br>
 Last updated/tested with mysql update: 2012-01-31_02-35_killing_spree<br>
<br>
A rough detail of the work that has gone into this database.<br>
Pathway returns as a database only, previously it had a patched ArcEmu with compiler optimizations enabled and two patches, as well as a custom client.<br>
<br>
The custom client is now Marforius-Client, now that ArcEmu has switched to CMake (some of) the compiler optimizations are now standard on release.<br>
The patches are no longer applied, and a custom ArcEmu is no longer provided.<br>
(You can still find the maintenance update on the ArcEmu forums, however.)<br>
<br>
General history (Pre v1):<br>
<br>
* NCDB 102, taken as base.<br>
* NCDB updated with TOM_RUS cache parser (And a collection of tools at the time that were handy, most notably a wowhead parser for items and creature/object names)<br>
* Various scripts were implemented, around the same time as LuaHypArc was committed.<br>
* UDB data was taken, eventually overwritten around the same time I rebased PotD on TDB.<br>
* Pathway (the project) was formed after cleaning the mess of a database I made with a collection of scripts made for deleting nonexistent data or creatures/objects without proto entries. (Now included on the forums in the maintenance update patch)<br>
* Imported massive amounts of data from retail caches(some 100,000+ entries), using DPDB's(Dirt Poor DataBase) team's caches, my own playing and questing, and various contributions from helpful members on ArcEmu's IRC.<br>
* Added more scripts to Pathway, notably in boredom I added various controller (gossip) NPCs for weather.<br>
* Continued to import caches from retail<br>
* Artox rewrote cache parser for speed, and more flexibility in another language(Java).<br>
* Added a patched version of ArcEmu, a custom client, and a import/export batch tool.<br>
* Imported data into Pathway from TDB (again), notably quests that were being parsed incorrectly were fixed, as were legendary items that were incorrectly scaling.<br>
* Lua scripts were rewritten after talking to Paroxysm. Since then they have not been changed.<br>
* Pathway was then closed after a long period of inactivity.<br>
* Pathway returns in 2012 as what it is now on Github.<br>
<br>
The next work when I have time to go into this database is parsing old wowhead archives for gossips, as parsers previously didn't supply the linkup data and many gossips are sitting in that table without being applied to NPCs.<br>
<br>
New updates will be listed here, when they happen<br>
<br>
<br>
- To get the latest version of Pathway of the Damned -<br>
* Compile ArcEmu as normal<br>
* Import the latest character/login structures<br>
* Import the file in the winrar archive to your world database<br>
* Update the file if need be after reading this file, determining the last time PotD was updated by looking at the header of this file.<br>
* Move the /scripts/ folder to your ArcEmu ROOT folder.<br>
* After correctly being updated, if need be - You would then be ready to run ArcEmu with PotD.<br>
<br>
I recommend HeidiSQL as your SQL GUI tool of choice. It's much faster then Navicat and free, now that Navicat doesn't offer a lite (free) version.<br>
<br>
I will continue to compress the world export because otherwise it is massive, and I don't like bloating up my repo with an otherwise 190~MB file that could be compressed to less then 20MBs.<br>
<br>
Please report any bugs, missing data, or otherwise on the Github tracker.<br>
