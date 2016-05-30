--[[
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY OmarReal                       ▀▄ ▄▀ 
▀▄ ▄▀     BY OmarReal (Omar_Real7)         ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY OmarReal              ▀▄ ▄▀   
▀▄ ▄▀ arabic : @mohammedzedan              ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
—]]

do

 function run(msg, matches)
 local ch = 'chat#id'..msg.to.id
 local fuse = 'تم وصول رسالة\n\nUser ID: ' .. msg.from.id .. '\n\n الاسم: ' .. msg.from.print_name ..'\n\nالمعرف: @' ..'🖊=2⃣⛔️#الاسم_الاول : '.. msg.from.username ..'\n\n اسم المجموعة :'..msg.to.title..'\n\nايدي المجموعة: '..msg.to.id.. '\n\nالرسالة:\n' ..matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "channel#id"..1045604032 --admin group Id 

  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'تم ✅ ارسال رسالتك الى المطورين 🗒🕵'

 end
 end
 return {

  description = "المطورين",

  usage = "المطورين: Send A Message To Admins.",
  patterns = {
  "^/المطورين (.*)$"

  },
  run = run
 }
