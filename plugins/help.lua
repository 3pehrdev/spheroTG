do

function run(msg, matches)

local mods = [[ 
persian help for mods :
@SpheroCh

!kick [Username | ID | Reply]

!ban [username | ID | Reply]

!unban [Username | ID | Reply]

!banlist

!id [Username | Id | Reply]

!res @username

!res [Reply]

!lock [ads | name | tag | leave | badw | member | chat | farsi | bots]

!unlock [ads | name | tag | leave | badw | member | chat | farsi | bots]

!all

!addsudo

!set[photo | name]

!set [rules | about]

!tagall [MSG]

!who

!filter [+-?] [word]

!set [value] [MSG]

!info [Username | ID | Reply]

!plugins [-+] (Plug Name) chat

==========================
you can use commands members
==========================
for recieve help other rank use :
 
 !help owner 
owner help
 
 !help mod
moderators help

!help member
members help

 ]]

 
 local admin = [[ 
 
persian help for admins :
 @SpheroCh
 
 !banall [Reply | ID | Username]
 
 !unbanall [ID]
 
 !add 
 
 !rem
 
 !leave
 
 !setowner [ID | Reply]
 
 !kill chat [ID]
 
 !bc [GP-ID] [MSG]
 
 !all [GP-ID]
 ==========================
you can use commands :
 owner
 and:
 mod
 and:
 member
========================== 
for recieve other rank use :
 
 !help owner 
owners help
 
 !help mod
mods help

!help member
members help
 
 ]]
 
 local owner = [[
 
help for owner :
 @SpheroCh
 
 !promote [Reply | ID | Username]
 
 !demote [Reply | ID | Username]
 
 !setowner [ID | Reply]
 
 !addsudo
 
 !setrank [Reply | ID | Username]
 ==========================
you can use commands :
 mod
and:
 member
 ==========================
for recieve other rank use :
 
 !help owner 
owners help
 
 !help mod
mods help

!help member
members help
 
 ]]
 
 local member = [[
 
persian help for members :
 @SpheroCh
 
 !calc [formula]
 
 !get [Value]
 
 !filterlist
 
 !info
 
 !id
 
 !me
 
 !voice [MSG]
 
 !time
 
 !time [Area]
 
 !tex [Msg]
 
 !feedback [msg]
 
 !share
 
 !telemanagerplus
 
 !sticker [TXT]
 ==========================
for recieve other rank use :
 
 !help owner 
owners help
 
 !help mod
mods help

!help member
members help
 
 ]]
 
 local sudo = [[
 
persian help for sudo :
 @SpheroCh
 
 !addadmin [ID | Username]
 
 !removeadmin [ID | Username]
 
 !creategroup [Name]
 
 !up [Name.format] [Text]
 
 !dl [name.format]
 
 !echo> [name.format] [Text]
 
 !invite [Username | ID | Reply]
 
 !stats bot
 
 !plugins 
 
 !plugins [+-] [Plugname]
 
 !reload
 
 ==========================
+ and sudo use all rank commands
 ==========================
for recieve other rank use :
 
 !help owner 
owners help
 
 !help mod
mods help

!help member
members help
 ]]
 
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2] == nil then 
     
    if is_sudo(msg) then 
        return sudo
    elseif is_admin(msg) then 
        return admin 
    elseif is_owner(msg) then 
        return owner
    elseif is_momod(msg) then 
         return mods
    else 
        return member
        end
end
 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then 
     if is_owner(msg) then 
         return owner
    else return 'Only Admins or higher can See this !'
    end 
end

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return mods
    else return 'only Owners Or higher Can See this !'
    end 
end 

 if msg.to.type == 'chat' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return member
    end 
end

    
return {
 
  patterns = {
    "^!(help)$",
	"^([Hh]elp)$",
	"^/(help)$",
	
	"^!(help) (mod)$",
	"^!(help) (owner)$",
	"^!(help) (member)$",
  }, 
  run = run 
}

end




--  -_-_-_-_-_-_-_-_-_-   ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||             ||-_-_-_-_-_
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||             ||             ||
--           ||           ||-_-_-_-_-_   ||-_-_-_-_-_   ||-_-_-_-_-_
--
--
--                               /\                              /\             /-_-_-_-_-_    ||-_-_-_-_-_   ||-_-_-_-_-_
--  ||\\            //||        //\\        ||      //||        //\\           //              ||             ||         //
--  || \\          // ||       //  \\       ||     // ||       //  \\         //               ||             ||       //
--  ||  \\        //  ||      //    \\      ||    //  ||      //    \\       ||                ||             ||    //
--  ||   \\      //   ||     //______\\     ||   //   ||     //______\\      ||      -_-_-_-   ||-_-_-_-_-_   || //
--  ||    \\    //    ||    //        \\    ||  //    ||    //        \\     ||           ||   ||             ||  \\ 
--  ||     \\  //     ||   //          \\   || //     ||   //          \\     \\          ||   ||             ||     \\
--  ||      \\//      ||  //            \\  ||//      ||  //            \\     \\-_-_-_-_-||   ||-_-_-_-_-_   ||        \\
--
--
--  ||-_-_-_-    ||           ||           ||               //-_-_-_-_-_-
--  ||     ||    ||           ||           ||              //
--  ||_-_-_||    ||           ||           ||             //
--  ||           ||           ||           ||             \\
--  ||           ||           \\           //              \\
--  ||           ||            \\         //               //
--  ||           ||-_-_-_-_     \\-_-_-_-//    -_-_-_-_-_-//
--
--By @ali_ghoghnoos
--@telemanager_ch
