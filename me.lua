
do

local function run(msg, matches)
  if matches[1] == 'موقعي' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "انت المطور مالتي 😻🙊"
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
      return "انت ادمن بلكروب 🌚💭"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
      return "انت مشرف الكروب🐸💭"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "انت طايح حظك😹😹"
    else
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "انت مجرد عضو 😒💔"
    end
  end
end

return {
  patterns = {
    "^(موقعي)$",
    "^(موقعي)$"
    },
  run = run
}
end