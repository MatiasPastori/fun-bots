local code = 'cn_CN' -- Add/replace the xx_XX here with your language code (like de_DE, en_US, or other)!

-- GENERAL
Language:add(code, "Bot Weapon", "BOT武器")
Language:add(code, "Select the weapon the bots use", "选择BOT的武器")
Language:add(code, "Bot Kit", "BOT兵种")
Language:add(code, "The Kit of the Bots", "BOT重生选择的兵种")
Language:add(code, "Bot Color", "BOT皮肤")
Language:add(code, "The Color of the Bots", "BOT重生时的装备皮肤")
Language:add(code, "Zombie Mode", "僵尸模式")
Language:add(code, "Zombie Bot Mode", "BOT僵尸模式")

-- DIFFICULTY
Language:add(code, "Bot Aim Worsening", "BOT瞄准精度")
Language:add(code, "Make bots aim worse: for difficulty: 0 = no offset (hard), 1 or even greater = more sway (easy)", "让BOT瞄准更糟糕:为了难度: 0 = 难, 1 或者更高 = 随机性强（容易）")
Language:add(code, "Bot Aim Worsening of Snipers", "BOT狙击手瞄准精度")
Language:add(code, "See botAimWorsening, only for Sniper-rifles", "只适用狙击手")
Language:add(code, "Bot Aim Worsening of Support", "BOT支援兵瞄准精度")
Language:add(code, "See botAimWorsening, only for LMGs", "只适用支援兵")
Language:add(code, "Bot Worsening Skill", "BOT技能精度")
Language:add(code, "Variation of the skill of a single bot. The higher, the worse the bots can get compared to the original settings", "单个BOT的技能变化.与原始设置相比,越高BOT越差")
Language:add(code, "Bot Sniper Worsening Skill", "BOT狙击手技能精度")
Language:add(code, "See BotWorseningSkill - only for BOTs using sniper bolt-action rifles", "只有BOT狙击手生效")
Language:add(code, "Damage Factor Assault", "攻击性武器伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor Carabine", "步枪武器伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor LMG", "机枪伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor PDW", "冲锋枪伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor Sniper", "狙击枪伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor Shotgun", "霰弹枪伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor Pistol", "手枪伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")
Language:add(code, "Damage Factor Knife", "近战伤害倍率")
Language:add(code, "Original Damage from bots gets multiplied by this", "BOT原伤害乘以此")

-- SPAWN
Language:add(code, "Spawn Mode", "生成模式")
Language:add(code, "Mode the bots spawn with", "BOT以该模式生成")
Language:add(code, "Balance Players Ignoring Bots", "无视BOT平衡玩家")
Language:add(code, "Counts players in each team to decide which team a player joins", "计算双方的玩家数量以决定玩家加入哪一队")
Language:add(code, "Team Switch Mode", "在两个队伍中生成")
Language:add(code, "Mode to switch the team", "切换队伍生成模式")
Language:add(code, "Spawn Bots in all teams", "在所有团队中生成BOT")
Language:add(code, "Bots spawn in both teams", "两个队伍中都会生成BOT")
Language:add(code, "Start Number of Bots", "BOT开始时的数量")
Language:add(code, "Bots for spawnmode", "Spawn模式的BOT")
Language:add(code, "New Bots per Player", "在新玩家加入时,增加的BOT数量")
Language:add(code, "Number to increase Bots by when new players join", "新玩家加入时,增加BOT的数量")
Language:add(code, "Factor Player Team Count", "玩家队伍BOT数量倍率")
Language:add(code, "Reduce player team in balanced_teams or fixed_number mode", "在balance_teams或fixed_number 模式下减少玩家队伍BOT")
Language:add(code, "Team of the Bots", "BOT生成团队")
Language:add(code, "Default bot team (0 = neutral / auto, 1 = US, 2 = RU) TeamId.Team2", "默认BOT生成的团队(0=自动,1=美国,2=俄罗斯)")
Language:add(code, "New Loadout on Spawn", "在生成时重新分配装备")
Language:add(code, "Bots get a new kit and color, if they respawn", "如果BOT重生,会得到新的装备和皮肤")
Language:add(code, "Max Assault Bots", "突击装备BOT最大数量")
Language:add(code, "Maximum number of Bots with Assault Kit. -1 = no limit", "带有突击装备的BOT最大数量,-1=无限")
Language:add(code, "Max Engineer Bots", "工程装备BOT最大数量")
Language:add(code, "Maximum number of Bots with Engineer Kit. -1 = no limit", "带有工程装备的BOT最大数量,-1=无限")
Language:add(code, "Max Support Bots", "支援装备BOT最大数量")
Language:add(code, "Maximum number of Bots with Support Kit. -1 = no limit", "带有支援装备的BOT最大数量,-1=无限")
Language:add(code, "Max Recon Bots", "侦查装备BOT最大数量")
Language:add(code, "Maximum number of Bots with Recon Kit. -1 = no limit", "带有侦查装备的BOT最大数量,-1=无限")
Language:add(code, "Additional Spawn Delay", "BOT额外重生延迟")
Language:add(code, "Additional time a bot waits to respawn", "BOT重生时等待的额外时间")
Language:add(code, "Bot Health at spawn", "BOT生成时的生命值")
Language:add(code, "Max health of bot (default 100.0)", "BOT的最大生命值(默认100)")

-- SPAWN LIMITS
Language:add(code, "Max Bots Per Team (default)", "每支队伍最大BOT数(默认游戏模式)")
Language:add(code, "Max number of bots in one team, if no other mode fits", "默认是一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (TDM)", "每支队伍最大BOT数(TDM)")
Language:add(code, "Max number of bots in one team for TDM", "TDM模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (TDM-CQ)", "每支队伍最大BOT数(TDM-CQ)")
Language:add(code, "Max number of bots in one team for TDM-CQ", "TDM-CQ模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (Squad-DM)", "每支队伍最大BOT数(Squad-DM)")
Language:add(code, "Max number of bots in one team for Squad-DM", "Squad-DM模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (CQ-Large)", "每支队伍最大BOT数(CQ-Large)")
Language:add(code, "Max number of bots in one team for CQ-Large", "CQ-Large模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (CQ-Small)", "每支队伍最大BOT数(CQ-Small)")
Language:add(code, "Max number of bots in one team for CQ-Small", "CQ-Small模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (CQ-Assault-Large)", "每支队伍最大BOT数(CQ-Assault-Large)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Large", "CQ-Assault-Large模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (CQ-Assault-Small)", "每支队伍最大BOT数(CQ-Assault-Small)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Small", "CQ-Assault-Small模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (Rush)", "每支队伍最大BOT数(Rush)")
Language:add(code, "Max number of bots in one team for Rush", "Rush模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (CTF)", "每支队伍最大BOT数(CTF)")
Language:add(code, "Max number of bots in one team for CTF", "CTF模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (Domination)", "每支队伍最大BOT数(Domination)")
Language:add(code, "Max number of bots in one team for Domination", "Domination模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (Gunmaster)", "每支队伍最大BOT数(Gunmaster)")
Language:add(code, "Max number of bots in one team for Gunmaster", "Gunmaster模式中一个队伍中BOT最大数")
Language:add(code, "Max Bots Per Team (Scavenger)", "每支队伍最大BOT数(Scavenger)")
Language:add(code, "Max number of bots in one team for Scavenger", "Scavenger模式中一个队伍中BOT最大数")

-- BEHAVIOUR
Language:add(code, "FOV of Bots", "BOT视野")
Language:add(code, "Degrees of FOV of Bot", "BOT的视野,可以在此视野中检测玩家")
Language:add(code, "FOV of Bots Verticle", "BOT的垂直FOV")
Language:add(code, "Degrees of FOV of Bot in vertical direction", "BOT在垂直方向的FOV度数")
Language:add(code, "Max Shoot-Distance No Sniper", "最大攻击距离(不包括狙击手)")
Language:add(code, "Meters before bots (not sniper) will start shooting at players", "此距离BOT开始攻击玩家(不包括狙击手)")
Language:add(code, "Max Shoot Distance Sniper", "最大狙击距离")
Language:add(code, "Meters before bots will start shooting at players", "此距离BOT开始攻击玩家")
Language:add(code, "Max Distance a normal soldier shoots back if Hit", "普通士兵击中目标后反击的最大距离")
Language:add(code, "Meters until bots (not sniper) shoot back if hit", "直到BOT被击中还击的距离(不是狙击手)")
Language:add(code, "Max Distance a sniper soldier shoots back if Hit", "狙击手被击中时的最大还击距离")
Language:add(code, "Meters until snipers shoot back if hit", "狙击手会开枪还击的距离")
Language:add(code, "Max Shoot-Distance Pistol", "BOT手枪最大攻击距离")
Language:add(code, "The distance before a bot switches to pistol if his magazine is empty (Only in auto-weapon-mode)", "仅在auto-weapon-mode模式下,如果BOT的弹匣是空的,切换到手枪的攻击的距离")
Language:add(code, "Bot Attack Mode", "BOT攻击模式")
Language:add(code, "Mode the Bots attack with. Random, Crouch or Stand", "设置BOT攻击姿态,蹲下或站立")
Language:add(code, "Shoot Back if Hit", "BOT还击")
Language:add(code, "Bot shoots back if hit", "如果BOT被击中,会立刻还击")
Language:add(code, "Bots Attack Bots", "BOT攻击BOT")
Language:add(code, "Bots attack bots from other team", "BOT会攻击敌方BOT")
Language:add(code, "Bots Attack Players", "BOT攻击玩家")
Language:add(code, "Bots attack Players from other team", "BOT攻击来自其他队伍的玩家")
Language:add(code, "Melee Attack If Close", "近战攻击")
Language:add(code, "Bot attacks with melee if close", "如果足够靠近,BOT会近战攻击")
Language:add(code, "Bots can kill themselves", "BOT自杀")
Language:add(code, "Bot takes fall damage or explosion-damage from own frags", "BOT不会受到摔落和爆炸造成的伤害")
Language:add(code, "Bots teleport them when stuck", "BOT卡住时,会传送它出来")
Language:add(code, "Bot teleport to their target if they are stuck", "如果BOT卡住,BOT会传送出来")
Language:add(code, "Bots revive players", "BOT会救治玩家")
Language:add(code, "Bots revive other players", "BOT会救治玩家")
Language:add(code, "Bots throw grenades", "BOT会扔手榴弹")
Language:add(code, "Bots throw grenades at enemies", "BOT向敌人投掷手榴弹")
Language:add(code, "Bots deploy bags", "BOT会部署装备")
Language:add(code, "Bots deploy ammo and medkits", "弹药或者医疗")
Language:add(code, "Deploy Cycle", "部署周期")
Language:add(code, "Time between deployment of bots in seconds", "BOT部署的冷却时间(秒为单位)")
Language:add(code, "Snipers attack choppers", "狙击手攻击直升机")
Language:add(code, "Bots with sniper-rifels attack choppers", "带有狙击步枪的BOT攻击直升机")

-- VEHICLE
Language:add(code, "Use vehicles", "BOT驾驶载具")
Language:add(code, "Bots can use vehicles", "BOT驾驶载具")
Language:add(code, "Use air vehicles", "驾驶空中载具")
Language:add(code, "Bots can use air-vehicles", "BOT驾驶空中载具")
Language:add(code, "Max Bots per vehicle", "每辆载具的最大BOT数")
Language:add(code, "Maximum number of Bots in a vehicle", "载具中BOT的最大数量")
Language:add(code, "FOV of Vehicles", "车辆FOV视野")
Language:add(code, "Degrees of FOV of Non AA - Vehicles", "非AA防空车的FOV视野")
Language:add(code, "FOV of Vehicles Verticle", "载具垂直FOV视野")
Language:add(code, "Degrees of vertical FOV of Non AA - Vehicles", "非AA防空车的垂直FOV视野")
Language:add(code, "FOV of Chopper Verticle", "直升机FOV视野")
Language:add(code, "Degrees of pitch a chopper attacks", "直升机FOV视野")
Language:add(code, "FOV of AA-Vehicles", "AA防空车的FOV视野")
Language:add(code, "Degrees of FOV of AA - Vehicles", "AA防空车的FOV视野")
Language:add(code, "FOV of AA-Vehicles Verticle", "AA防空车垂直FOV视野")
Language:add(code, "Degrees of FOV of AA - Vehicles", "AA防空车的FOV视野")
Language:add(code, "Max Raycast Distance for Vehicles", "载具的最大辐射距离")
Language:add(code, "Meters bots in Vehicles start shooting at players", "载具的最大辐射距离")
Language:add(code, "Max Shoot-Distance No Anti Air", "最远射程不包括防空车")
Language:add(code, "Meters bots in vehicle (no Anti-Air) starts shooting at players", "距离多少米的载具（不包括防空车）开始向玩家射击")
Language:add(code, "Time a vehicle driver waits for passengers", "载具司机等待乘客的时间")
Language:add(code, "Seconds to wait for other passengers", "等待其他乘客多少秒")
Language:add(code, "Choppers Attack", "直升机攻击")
Language:add(code, "If false, choppers only attack without gunner on board", "如果为false,直升机只在没有炮手情况下才会攻击")
Language:add(code, "Activate Auto-AA", "激活Auto-AA")
Language:add(code, "Enable Auto-AA by NyScorpy", "启用Auto-AA,作者:NyScorpy")
Language:add(code, "Max Distance Auto-AA", "Auto-AA最远射程")
Language:add(code, "Max Range of Stationary AA", "固定式AA的最远射程")

-- WEAPONS
Language:add(code, "Random Weapon usage", "BOT使用随机武器")
Language:add(code, "Use a random weapon out of the Weapon Set", "BOT使用随机的组合中的武器")
Language:add(code, "Weapon Set Assault", "突击兵武器")
Language:add(code, "Weaponset of Assault class. Custom uses the Shared/WeaponLists", "突击兵使用的武器,定制使用共享/武器列表")
Language:add(code, "Weapon Set Engineer", "工程兵武器")
Language:add(code, "Weaponset of Engineer class. Custom uses the Shared/WeaponLists", "工程兵使用的武器,定制使用共享/武器列表")
Language:add(code, "Weapon Set Support", "支援兵武器")
Language:add(code, "Weaponset of Support class. Custom uses the Shared/WeaponLists", "支援兵使用的武器,定制使用共享/武器列表")
Language:add(code, "Weapon Set Recon", "侦察兵武器")
Language:add(code, "Weaponset of Recon class. Custom uses the Shared/WeaponLists", "侦察兵使用的武器,定制使用共享/武器列表")
Language:add(code, "Primary Weapon Assault", "突击兵主要武器")
Language:add(code, "Primary weapon of Assault class, if random-weapon == false", "如果为false,则该兵种所使用的主武器将随机")
Language:add(code, "Primary Weapon Engineer", "工程兵主要武器")
Language:add(code, "Primary weapon of Engineer class, if random-weapon == false", "如果为false,则该兵种所使用的主武器将随机")
Language:add(code, "Primary Weapon Support", "支援兵主要武器")
Language:add(code, "Primary weapon of Support class, if random-weapon == false", "如果为false,则该兵种所使用的主武器将随机")
Language:add(code, "Primary Weapon Recon", "侦查兵主要武器")
Language:add(code, "Primary weapon of Recon class, if random-weapon == false", "如果为false,则该兵种所使用的主武器将随机")
Language:add(code, "Pistol of Bots", "BOT手枪武器")
Language:add(code, "Pistol of Bots, if random-weapon == false", "如果为false,则BOT所使用的手枪将随机")
Language:add(code, "Knife of Bots", "BOT近战武器")
Language:add(code, "Knife of Bots, if random-weapon == false", "如果为false,则BOT所使用的近战武器将随机")

-- TRACE
Language:add(code, "Debug Trace Paths", "调试路径")
Language:add(code, "Shows the trace line and search area from Commo Rose selection", "显示选择路径轨迹和搜索区域")
Language:add(code, "Waypoint Range", "路径点显示范围")
Language:add(code, "Set how far away waypoints are visible (meters)", "设置多远路径点可见(米)")
Language:add(code, "Draw Waypoint Lines", "绘制路径")
Language:add(code, "Draw waypoint connection lines", "绘制路径点之间的连接线")
Language:add(code, "Line Range", "连接线显示距离")
Language:add(code, "Set how far away waypoint lines are visible (meters)", "设置多远连接线可见(米)")
Language:add(code, "Draw Waypoint IDs", "绘制路径点ID")
Language:add(code, "Draw the IDs of the waypoints", "绘制航路点的 ID")
Language:add(code, "Text Range", "文本显示距离")
Language:add(code, "Set how far away waypoint text is visible (meters)", "设置多远路径点文本可见(米)")
Language:add(code, "Draw Spawn Points", "绘制重生点")
Language:add(code, "Draw the Points where players can spawn", "绘制玩家可以生成的点")
Language:add(code, "Range of Spawn Points", "重生点显示范围")
Language:add(code, "Set how far away spawn points are visible (meters)", "设置多远重生点可见(米)")
Language:add(code, "Trace Delta Points", "跟踪Delta点")
Language:add(code, "Update interval of trace", "更新路径间隔")
Language:add(code, "Nodes that are drawn per cycle", "每个周期绘制节点数")
Language:add(code, "Set how many nodes get drawn per cycle. Affects performance", "设置每个周期绘制的节点数,影响性能")

-- ADVANCED
Language:add(code, "Distance for direct attack", "直接攻击距离")
Language:add(code, "Distance bots can hear you at", "BOT能听到你脚步的距离")
Language:add(code, "Bot melee attack cool-down", "BOT近战攻击冷却时间")
Language:add(code, "The time a bot waits before attacking with melee again", "BOT近战攻击冷却时间")
Language:add(code, "Bots without sniper aim for head", "BOT瞄准头部(不包括狙击手)")
Language:add(code, "Bots without sniper aim for the head. A more experimental config", "BOT瞄准头部(不包括狙击手),实验功能")
Language:add(code, "Bots with Sniper aim for head", "狙击手BOT瞄准头部")
Language:add(code, "Bots with sniper aim for the head. A more experimental config", "狙击手BOT瞄准头部")
Language:add(code, "Bots with Support LMGs aim for head", "支援兵BOT的机枪瞄准头部")
Language:add(code, "Bots with support LMGs aim for the head. A more experimental config", "支援兵BOT的机枪瞄准头部,实验功能")
Language:add(code, "Jump while shooting", "射击时跳跃")
Language:add(code, "Bots jump over obstacles while shooting if needed", "如果需要,BOT会在射击时跳过障碍物")
Language:add(code, "Jump while moving", "射击时移动")
Language:add(code, "Bots jump while moving. If false, only on obstacles!", "BOT在移动时跳跃.如果为false,只在障碍物上跳跃")
Language:add(code, "Overwrite speed mode", "覆盖移动姿态")
Language:add(code, "0 = no overwrite. 1 = prone, 2 = crouch, 3 = walk, 4 = run", "0 = 不覆盖. 1 = 匍匐, 2 = 蹲下, 3 = 行走, 4 = 跑")
Language:add(code, "Overwrite attack speed mode", "覆盖攻击时的姿态")
Language:add(code, "Affects Aiming!!! 0 = no overwrite. 1 = prone, 2 = crouch (good aim), 3 = walk (good aim), 4 = run", "影响瞄准!!! 0 = 不覆盖. 1 = 匍匐, 2 = 蹲下 (精确度更高), 3 = 行走 (精确度更高), 4 = 跑")
Language:add(code, "Speed factor", "速度倍率")
Language:add(code, "Reduces the movement speed. 1 = normal, 0 = standing", "降低移动速度. 1 = 正常,0 = 不动")
Language:add(code, "Speed factor attack", "攻击时速度倍率")
Language:add(code, "Reduces the movement speed while attacking. 1 = normal, 0 = standing", "攻击时降低移动速度. 1 = 正常,0 = 不动")
Language:add(code, "Use Random Names", "使用随机名字")
Language:add(code, "Changes names of the bots on every new round. Experimental right now...", "在每次新回合修改BOT的名字,正在实验")
Language:add(code, "Move Sidewards", "侧身移动")
Language:add(code, "Bots move sidewards", "BOT侧身移动")
Language:add(code, "Max straight Cycle", "最大直线周期")
Language:add(code, "Max time bots move straight, before sidewards-movement (in sec)", "BOT在横向移动之前直线移动的最长时间(秒为单位)")
Language:add(code, "Max Side Cycle", "最大横向循环")
Language:add(code, "Max time bots move sidewards, before straight-movement (in sec)", "BOT在直线移动之前横向移动的最长时间(秒为单位)")
Language:add(code, "Min Move Cycle", "最小移动周期")
Language:add(code, "Min time bots move sidewards or straight before switching (in sec)", "BOT切换前横向或直线移动的最短时间(秒为单位)")

-- EXPERT
Language:add(code, "Bot first shot delay", "BOT第一枪延迟")
Language:add(code, "Delay for first shot. If too small, there will be great spread in first cycle because it is not compensated yet", "第一枪延迟.如果太小,第一个回合会有很大的扩散,因为它还没有得到补偿")
Language:add(code, "Bot min time shoot at player", "BOT最短向玩家射击的时间")
Language:add(code, "The minimum time a bot shoots at one player for - recommended minimum 1.5, below this you will have issues", "BOT向一名玩家射击的最短时间-建议至少为1.5,低于此会遇到问题")
Language:add(code, "Bot min time shoot at player in vehicle", "BOT射击载具中玩家的最短时间")
Language:add(code, "The minimum time a bot shoots at one player if in vehicle - recommended minimum 2.5, below this you will have issues", "当玩家在载具内,BOT向一名玩家射击的最短时间-建议最短时间为2.5,低于此会遇到问题")
Language:add(code, "Bot fire mode duration", "Bot开火持续时间")
Language:add(code, "The minimum time a bot tries to shoot a player - recommended minimum 3.0, below this you will have issues", "BOT试图射击玩家的最短时间-建议至少为3.0,低于此会遇到问题")
Language:add(code, "Bot fire mode duration in vehicle", "BOT在载具内的开火模式")
Language:add(code, "The minimum time a bot tries to shoot a player or vehicle, when in a vehicle - recommended minimum 7.0", "BOT在载具内尝试射击玩家或载具的最短时间-建议最低7.0")
Language:add(code, "Maximum yaw per sec", "每秒视野最大旋转角度")
Language:add(code, "In Degrees. Rotation Movement per second", "每秒旋转角度")
Language:add(code, "Target distance waypoint", "BOT距离路径点")
Language:add(code, "The distance the bots have to reach to continue with the next Waypoint", "BOT必须达到当前路径的距离才能进行下一个路径点")
Language:add(code, "Keep one slot for players", "为玩家保留一个位置")
Language:add(code, "Always keep one slot for free new Players to join", "始终保留一个位置供新玩家加入")
Language:add(code, "Distance to spawn", "生成距离")
Language:add(code, "Distance to spawn Bots away from players", "生成的BOT距离玩家多远")
Language:add(code, "Height distance to spawn", "生成高度")
Language:add(code, "Distance vertically, Bots should spawn away, if closer than distance", "垂直距离,BOT应该在远处生成,如果比此距离更近的话")
Language:add(code, "Distance to spawn reduction", "减少生成距离")
Language:add(code, "Reduce distance if not possible", "减少生成距离")
Language:add(code, "Max tries to spawn at distance", "尝试在最远处生成")
Language:add(code, "Try this often to spawn a bot away from players", "经常尝试在玩家最远处的地方生成BOT")
Language:add(code, "Attack way Bots", "BOT攻击方式")
Language:add(code, "Bots on paths attack player", "BOT在路径上攻击玩家")
Language:add(code, "Respawn way Bots", "BOT重生方式")
Language:add(code, "Bots on paths respawn if killed", "如果在被路径上被杀,则会重生在路径上")
Language:add(code, "Spawn Method", "BOT生成方法")
Language:add(code, "Method the bots spawn with. Careful, not supported on most of the maps!!", "BOT生成的方式.小心,大多数地图不支持!!")

-- OTHER
Language:add(code, "Disable UI", "禁用UI界面")
Language:add(code, "If true, the complete UI will be disabled (not available in the UI)", "如果为true,则UI将被禁用")
Language:add(code, "Allow Comm-UI for all", "允许所有人使用命令菜单")
Language:add(code, "If true, all Players can access the Comm-Screen", "如果为true,所有玩家都可以使用命令菜单")
Language:add(code, "Disable chat-commands", "禁用聊天命令")
Language:add(code, "If true, no chat commands can be used", "如果为true,则聊天命令将被禁用")
Language:add(code, "Disable RCON-commands", "禁用远程管理命令")
Language:add(code, "If true, no RCON commands can be used", "如果为true,则远程管理命令将被禁用")
Language:add(code, "Ignore Permissions", "无视权限")
Language:add(code, "If true, all permissions are ignored --> everyone can do everything", "如果为true,则忽略所有权限-->每个人都可以执行所有操作")
Language:add(code, "Language", "语言")
Language:add(code, "de_DE as sample (default is English, when language file does not exist)", "默认为英语")

-- Strings of ../ext/Client/ClientNodeEditor.lua

-- Strings of ../ext/Server/BotSpawner.lua
Language:add(code, "CANT_JOIN_BOT_TEAM", "无法加入BOT队伍")

-- Strings of ../ext/Server/UIServer.lua
Language:add(code, "Attack", "进攻")
Language:add(code, "A", "A点")
Language:add(code, "B", "B点")
Language:add(code, "C", "C点")
Language:add(code, "D", "D点")
Language:add(code, "Defend", "防守")
Language:add(code, "E", "E点")
Language:add(code, "F", "F点")
Language:add(code, "G", "G点")
Language:add(code, "H", "H点")
Language:add(code, "Back", "返回")
Language:add(code, "Exit Vehicle", "离开载具")
Language:add(code, "Enter Vehicle", "进入载具")
Language:add(code, "Drop Ammo", "丢下弹药箱")
Language:add(code, "Drop Medkit", "丢下医疗箱")
Language:add(code, "Commands", "命令")
Language:add(code, "Attack Objective", "进攻目标")
Language:add(code, "Defend Objective", "防守目标")
Language:add(code, "Repair Vehicle", "维修载具")
Language:add(code, "Bot respawn activated!", "BOT重生已激活!")
Language:add(code, "Bot respawn deactivated!", "BOT重生已关闭!")
Language:add(code, "Bots will attack!", "BOT启用攻击!")
Language:add(code, "Bots will not attack!", "BOT关闭攻击!")
Language:add(code, "%s is currently not implemented", "%S目前未实现")
Language:add(code, "Settings has been saved temporarily", "设置已暂时保存")
Language:add(code, "Settings has been saved", "设置已保存")

-- Strings of ../ext/Shared/NodeCollection.lua
Language:add(code, "Loaded %d paths with %d waypoints for map %s", "为地图%s加载了%d个路径和%d个路径点")
Language:add(code, "Save in progress...", "正在保存中...")
Language:add(code, "Failed to execute query: %s", "无法执行查询: %s")
Language:add(code, "Saved %d paths with %d waypoints for map %s", "为地图%s保存了%d个路径和%d个航点 ")
Language:add(code, "Add Mcom-Action", "添加 Mcom-Action")
Language:add(code, "Overwrite: Loop-Path", "覆盖：循环路径")
Language:add(code, "Overwrite: Reverse-Path", "覆盖：反向路径")
Language:add(code, "Remove Data", "删除数据")
Language:add(code, "Add Label / Objective", "添加标签/目标")
Language:add(code, "Remove Label / Objective", "删除标签/目标")
Language:add(code, "Vehicles", "车辆")
Language:add(code, "Remove all Labels / Objectives", "删除所有标签/目标")
Language:add(code, "Paths", "路径")
Language:add(code, "Exit", "离开")
Language:add(code, "Land", "土地")
Language:add(code, "Water", "水")
Language:add(code, "Air", "空气")
Language:add(code, "Clear Path-Type", "清除路径类型")
Language:add(code, "Path-Type", "路径类型")
Language:add(code, "Exit Vehicle Passengers", "离开载具的乘客")
Language:add(code, "Exit Vehicle All", "离开全部载具")
Language:add(code, "Remove Vehicle Data", "删除载具数据")
Language:add(code, "Vehicle", "载具")
Language:add(code, "Add Vehicle", "添加载具")
Language:add(code, "Set Vehicle Path-Type", "设置载具路径类型")
Language:add(code, "Remove Vehicle", "移除载具")
Language:add(code, "Add Tank", "添加坦克")
Language:add(code, "Add Chopper", "添加直升机")
Language:add(code, "Add Plane", "添加飞机")
Language:add(code, "Add Other Vehicle", "添加其他载具")
Language:add(code, "Set Vehicle Spawn-Path", "设置载具生成路径")
Language:add(code, "US", "美国")
Language:add(code, "Team", "队伍")
Language:add(code, "RU", "俄罗斯")
Language:add(code, "Vehicle 1", "载具 1")
Language:add(code, "Vehicle 2", "载具 2")
Language:add(code, "Vehicle 3", "载具 3")
Language:add(code, "Vehicle 4", "载具 4")
Language:add(code, "Vehicle 5", "载具 5")
Language:add(code, "Index", "指数")
Language:add(code, "Vehicle 6", "载具 6")
Language:add(code, "Vehicle 7", "载具 7")
Language:add(code, "Vehicle 8", "载具 8")
Language:add(code, "Vehicle 9", "载具 9")
Language:add(code, "Vehicle 10", "载具 10")
Language:add(code, "Add", "添加")
Language:add(code, "Remove", "消除")
Language:add(code, "Base", "根据")
Language:add(code, "MCOM", "MCOM")
Language:add(code, "MCOM Interact", "MCOM 互动")
Language:add(code, "Set Spawn-Path", "设置生成路径")
Language:add(code, "Base US", "基于美国")
Language:add(code, "Base RU", "基于俄罗斯")
Language:add(code, "Capture Point", "捕获点")
Language:add(code, "MCOM 1", "MCOM 1")
Language:add(code, "MCOM 2", "MCOM 2")
Language:add(code, "MCOM 3", "MCOM 3")
Language:add(code, "MCOM 4", "MCOM 4")
Language:add(code, "MCOM 5", "MCOM 5")
Language:add(code, "MCOM 6", "MCOM 6")
Language:add(code, "MCOM 7", "MCOM 7")
Language:add(code, "MCOM 8", "MCOM 8")
Language:add(code, "MCOM 9", "MCOM 9")
Language:add(code, "MCOM 10", "MCOM 10")
Language:add(code, "MCOM INTERACT 1", "MCOM 互动 1")
Language:add(code, "MCOM INTERACT 2", "MCOM 互动 2")
Language:add(code, "MCOM INTERACT 3", "MCOM 互动 3")
Language:add(code, "MCOM INTERACT 4", "MCOM 互动 4")
Language:add(code, "MCOM INTERACT 5", "MCOM 互动 5")
Language:add(code, "MCOM INTERACT 6", "MCOM 互动 6")
Language:add(code, "MCOM INTERACT 7", "MCOM 互动 7")
Language:add(code, "MCOM INTERACT 8", "MCOM 互动 8")
Language:add(code, "MCOM INTERACT 9", "MCOM 互动 9")
Language:add(code, "MCOM INTERACT 10", "MCOM 互动 10")
Language:add(code, "base ru stage 1", "基于俄罗斯第1阶段")
Language:add(code, "base ru stage 2", "基于俄罗斯第2阶段")
Language:add(code, "base ru stage 3", "基于俄罗斯第3阶段")
Language:add(code, "base ru stage 4", "基于俄罗斯第4阶段")
Language:add(code, "base ru stage 5", "基于俄罗斯第5阶段")
Language:add(code, "base us stage 1", "基地美国第1阶段")
Language:add(code, "base us stage 2", "基地美国第2阶段")
Language:add(code, "base us stage 3", "基地美国第3阶段")
Language:add(code, "base us stage 4", "基地美国第4阶段")
Language:add(code, "base us stage 5", "基地美国第5阶段")
Language:add(code, "Objective", "目标")
Language:add(code, "BOTH", "两个都")
