function onSay(player, words, param)

    local skillPoints = player:getSkillPoints()
    player:sendTextMessage(MESSAGE_STATUS_WARNING, "brah")

    if skillPoints <= 0 then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "You do not have any skill points to spend.")
        return false
    end

    local skill = player:getSkillLevel(SKILL_SWORD) -- Sword test
    player:addSkillPoints(-1)
    player:setSkillLevel(SKILL_SWORD, skill + 1)

    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have increased your sword skill by 1.")
    return false

end
