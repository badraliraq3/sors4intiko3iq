local function pre_process(msg)

-- vardump(msg)

if msg.service then

return msg

end

if msg.id then

local hash = 'chat_msgs_counter:'..msg.to.id

local hash2 = 'user__msgs_count'..msg.from.id

print('saving user msgs')

local h = msg.id

redis:sadd(hash, h)

redis:sadd(hash2, h)

end

return msg

end

local function del_user_msgs(extra, success, result)

local msg = result

local hash2 = 'user__msgs_count'..msg.from.peer_id

local get = redis:smembers(hash2)

-- vardump(get)

local r = extra.r

for k,v in pairs(get) do

local msgid = v

delete_msg(msgid, ok_cb, false)

end

redis:del(hash2)

send_large_msg(r, 'جاري مسح الرسائل للعضو '..(msg.from.username or msg.from.print_name))

end

local function run(msg, matches)

-- vardump(msg)

local hash = 'chat_msgs_counter:'..msg.to.id

local hash2 = 'user__msgs_count'..msg.from.id

local get = redis:smembers(hash)

-- vardump(get)

if matches[1]:lower() == 'مسح رسائل المجموعه' then

for k,v in pairs(get) do

vardump(v)

local msgid = v

delete_msg(msgid, ok_cb, false)

end

return 'تم حذف الرسائل المجموعه✔️'

-- redis:del(hash)

end

if matches[1]:lower() == 'deluser' then

if msg.reply_id then

msgr = get_message(msg.reply_id, del_user_msgs, {r=get_receiver(msg)})

end

end

end

 

return {

patterns = {

"^(مسح رسائل المجموعه)$",

"^(مسح رسائل العضو)$",

},

run = run,

pre_process = pre_process

} 

--[[ This plugin is by | @Th3_BOOS |

any other plugins are fake

for more works and plugins

contact me at my username

Enjoy

]]
