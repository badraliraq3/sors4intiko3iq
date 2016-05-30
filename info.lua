do
function run(msg, matches)
local reply_id = msg['id']

local info = ' - اسمك/ج : '..msg.from.first_name..'\n'
..'◼️ - ايديك/ج : '..msg.from.id..'\n'
..'◼️ - معرفك/ج : @'..msg.from.username..'\n'
..'◼️ - ايدي الكروب : '..msg.to.id..'\n'
..'◼️ - المجموعة يضاف اليها 5ك\n -  اسم المجموعة : '..msg.to.title

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^/معلومات"
},
run = run
}
--Coded By @X_A_A >> 
end
