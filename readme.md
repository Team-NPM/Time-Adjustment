A very simple datapack/mod that allows the player to change how long the Minecraft daylight cycle lasts. It supports daylight cycle lengths 1 minute and longer.

## Updating
This datapack provides an easy command to prepare for an update and instructions on how to update. In the config menu, clicking the update datapack button or running `/function timeadjust:backup` prepares the datapack for updating and gives you a list of instructions on how to update it.

## Configuration Menu
![The configuration menu for time adjustment](https://cdn.modrinth.com/data/nKLAE3s4/images/1a7e9deada87e86a3c6760c8c819bea1a0d77d19.png)The configuration menu can be accessed by running `/function timeadjust:.config` or `/function config:timeadjust`.Use the provided daylight cycle toggle in the config menu to enable/disable the daylight cycle as the gamerule WILL NOT work.
There are 4 presets that let you quickly change the daylight cycle length.
- Default:20 minutes,Minecraft's default daylight cycle length
- 40 min:40 minute cycle
- 12 hrs:12 hour cycle,2 Minecraft days for every real life day
- Realtime:24 hour cycle,1:1 with real life days

The manual adjustment allows you to quickly and easily change the cycle length. Each one changes the length of the daylight cycle by the listed number in minutes. Click on the `manual adjust` text will allow you to directly enter in the daylight cycle length,just make sure it's entered in minutes.The uninstall button does what it says,it "uninstalls" the datapack. Clicking it will remove all the related data for the pack and tell you how to complete removal.

## Uninstalling
![The menu telling you how to finish uninstalling the datapack](https://cdn.modrinth.com/data/nKLAE3s4/images/7b3b4db6e7d2dec8d35e696d7f9ac6db5ac80d69.png)The datapack gives you an easy way to uninstall it by clicking the uninstall button in the config menu or running `/function timeadjust:uninstall`. Upon running,all stored data is removed and it tells you the final step to remove it.NOTE:The command might not list the correct version. If this is the case,use Minecraft's built-in tab completion to find and remove it.

## Debug
![The Time Adjustment scoreboard objective with all of the inner workings](https://cdn.modrinth.com/data/cached_images/555bf70a572064787d5f645b5f45aa713fc20b46.png)If you're technically inclined,you can view ALL of the datapck's data by running `/scoreboard objectives setdisplay sidebar TimeAdjust`. This command allows you to see all the information Time Adjustment stores and watch it count as it counts the day away. Just make sure to clear the sidebar when you're done to avoid annoying other people (if you're playing on a server).NOTE:Do not directly modify ANY of the scoreboard objective information. The datapack is made to only be configured via the configuration menu. Attempts to modify it outside of the config menu can result in buggy and broken behavior.
