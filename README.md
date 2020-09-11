# **better_fox Datapack**
better_fox is a 1.16-compatible Minecraft Java edition data pack that enhances Minecraft fox behavior.
[![IMAGE ALT TEXT HERE](https://i.imgur.com/4x0avii.jpg)](http://www.youtube.com/watch?v=bV0ZE2qu_M0)
_click the image for preview video_
## **Features**:
**By default, the data pack enable the fox to:**
- Swap his current armor with the armor on an armor stand if it is in a radius of 2 blocks from that armor stand
- Swap his current mouth item with the item on an armor stand's left hand if it is in a radius of 2 blocks from that armor stand
- Pick up a totem of undying if his offhand slot is empty (and of course, he can use it)
- Regenerate 1 heart every 20 seconds
- Teleport to the closest player if there is no player in a radius of 13 blocks and if that fox has an "on duty" name tag

**Side notes:**
- There is a cooldown of 5 seconds before the fox can swap armor and mouth item again
- As a by product, the data pack sets all the armor stands' `ShowArms` to `true`
- The fox won't teleport if he is being kept in a leash

## **/function**: 
The data pack offer a few in-game functions for players:
* **Change the teleport condition:**
    - `teleportwithouttag`: teleports only foxs with "on duty" name tag   
    - `teleportwithtag`: teleports foxs without the need of "on duty" name tag 
 
* **Get the fox nearest fox's information:**
    - `getfoxinfo`: gets info about the nearest fox's health, armors and weapons
    
To call a function, type in chat: 
    `/function better_fox:<name of a function>`

## **/trigger**: 
The functions for ordinary players without op:
* **Get the fox nearest fox's information:**
    - `foxinfo`: trigger this scoreboard to get info about the nearest fox's health, armors and weapons
    
To trigger a function, type in chat: 
    `/trigger better_fox:<name of the scoreboard>`

[//]: <> (To show the current modifying status of the creeper, simply type: )
[//]: <> (`/scoreboard objectives setdisplay sidebar fox_control`)
