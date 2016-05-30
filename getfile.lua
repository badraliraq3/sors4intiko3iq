--[[
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY OmarReal                       ▀▄ ▄▀ 
▀▄ ▄▀     BY OmarReal (Omar_Real7)         ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY OmarReal              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
    local function run(msg, matches)
        if is_sudo(msg) then
              file = './plugins/'..matches[1]..'.lua'
        do send_document('user#id'..msg.from.id,file, ok_cb, false) end
        end
        end
        return {
            patterns = {
                '/اجلب الملف (.+)'
                },
            run = run
        }
end
