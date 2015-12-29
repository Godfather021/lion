do
-- https://github.com/kir/kir --
local function unblock_user_callback(cb_extra, success, result)
  local receiver = cb_extra.receiver
  local user = 'user#id'..result.id
  if success == 0 then
    return send_large_msg(receiver, "I cant unblock user.")
  end
  unblock_user(user, cb_ok, false)
end
end
local function run(msg, matches)
 if msg.to.type == 'chat' then
    local user = 'chat#id'..msg.to.id
 local user = matches[2]
  if matches[1] == "user" then
      user = 'user#id'..user
      unblock_user(user, callback, false)
    end
    if not is_sudo(msg) then
    return "sudo only!"
  end
    return "User Has Been unblocked"
  end
end
 
return {
  patterns = {
    "^!unblock (user) (%d+)$",
  },
  run = run,
 -- https://github.com/kir/kir --
}