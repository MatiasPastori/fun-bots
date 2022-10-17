local code = 'ja_JA' -- Add/replace the xx_XX here with your language code (like de_DE, en_US, or other)!

--GENERAL
Language:add(code, "Bot Weapon", "ボット武器")
Language:add(code, "Select the weapon the bots use", "ボットが使用する武器を選択します")
Language:add(code, "Bot Kit", "ボットキット")
Language:add(code, "The Kit of the Bots", "ボットのキット")
Language:add(code, "Bot Color", "ボットの色")
Language:add(code, "The Color of the Bots", "ボットの色")
Language:add(code, "Zombie Mode", "ゾンビモード")
Language:add(code, "Zombie Bot Mode", "ゾンビボットモード")

--DIFFICULTY
Language:add(code, "Bot Aim Worsening", "ボットエイムの悪化")
Language:add(code, "Make bots aim worse: for difficulty: 0 = no offset (hard), 1 or even greater = more sway (easy).", "ボットの照準を悪化させます: 難易度: 0 = オフセットなし (難しい)、1 以上 = より揺れる (簡単)。")
Language:add(code, "Bot Aim Worsening of Snipers", "スナイパーのボットエイム悪化")
Language:add(code, "See botAimWorsening, only for Sniper-rifles", "スナイパーライフルのみ botAimWorsening を参照")
Language:add(code, "Bot Aim Worsening of Support", "ボットエイムのサポートの悪化")
Language:add(code, "See botAimWorsening, only for LMGs", "LMG のみ、botAimWorsening を参照してください")
Language:add(code, "Bot Worsening Skill", "ボット悪化スキル")
Language:add(code, "Variation of the skill of a single bot. the higher, the worse the bots can get compared to the original settings", "単一のボットのスキルのバリエーション。高いほど、元の設定と比較してボットが悪化する可能性があります")
Language:add(code, "Bot Sniper Worsening Skill", "ボットスナイパーワーニングスキル")
Language:add(code, "See BotWorseningSkill - only for BOTs using sniper bolt-action rifles.", "BotWorseningSkill を参照してください - スナイパー ボルトアクション ライフルを使用する BOT のみ。")
Language:add(code, "Damage Factor Assault", "ダメージファクターアサルト")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor Carabine", "ダメージファクターカラビン")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor LMG", "ダメージファクター軽機関銃")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor PDW", "ダメージファクターPDW")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor Sniper", "ダメージファクタースナイパー")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor Shotgun", "ダメージファクターショットガン")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor Pistol", "ダメージファクターピストル")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")
Language:add(code, "Damage Factor Knife", "ダメージファクターナイフ")
Language:add(code, "Original Damage from bots gets multiplied by this", "ボットからの元のダメージはこれで乗算されます")

--SPAWN
Language:add(code, "Spawn Mode", "スポーンモード")
Language:add(code, "Mode the bots spawn with", "ボットがスポーンするモード")
Language:add(code, "Balance Players Ignoring Bots", "ボットを無視してプレイヤーのバランスをとる")
Language:add(code, "Counts players in each team to decide which team a player joins", "各チームのプレーヤーを数えて、プレーヤーが参加するチームを決定します")
Language:add(code, "Team Switch Mode", "チームスイッチモード")
Language:add(code, "Mode to switch the team", "チームを切り替えるモード")
Language:add(code, "Spawn Bots in all teams", "すべてのチームでボットをスポーンする")
Language:add(code, "Bots spawn in both teams", "ボットは両方のチームでスポーンします")
Language:add(code, "Start Number of Bots", "ボットの開始数")
Language:add(code, "Bots for spawnmode", "スポーンモードのボット")
Language:add(code, "New Bots per Player", "プレイヤーごとの新しいボット")
Language:add(code, "Number to increase Bots by when new players join", "新しいプレイヤーが参加するときにボットを増やす数")
Language:add(code, "Factor Player Team Count", "ファクタープレイヤーチーム数")
Language:add(code, "Reduce playerteam in balanced_teams or fixed_number mode", "balanced_teamsまたはfixed_numberモードでplayerteamを減らす")
Language:add(code, "Team of the Bots", "ボットのチーム")
Language:add(code, "Default bot team (0 = neutral / auto, 1 = US, 2 = RU) TeamId.Team2", "デフォルトのボット チーム (0 = ニュートラル / 自動、1 = US、2 = RU) TeamId.Team2")
Language:add(code, "New Loadout on Spawn", "スポーン時の新しいロードアウト")
Language:add(code, "Bots get a new kit and color, if they respawn", "ボットがリスポーンすると、新しいキットと色を取得します")
Language:add(code, "Max Assault Bots", "マックスアサルトボット")
Language:add(code, "Maximum number of Bots with Assault Kit. -1 = no limit", "アサルト キットを使用したボットの最大数。 -1 = 無制限")
Language:add(code, "Max Engineer Bots", "マックスエンジニアボット")
Language:add(code, "Maximum number of Bots with Engineer Kit. -1 = no limit", "エンジニア キットを使用したボットの最大数。 -1 = 無制限")
Language:add(code, "Max Support Bots", "最大サポートボット")
Language:add(code, "Maximum number of Bots with Support Kit. -1 = no limit", "サポート キットを使用したボットの最大数。 -1 = 無制限")
Language:add(code, "Max Recon Bots", "最大偵察ボット")
Language:add(code, "Maximum number of Bots with Recon Kit. -1 = no limit", "偵察キットを搭載したボットの最大数。 -1 = 無制限")
Language:add(code, "Additional Spawn Delay", "追加のスポーン遅延")
Language:add(code, "Additional time a bot waits to respawn", "ボットがリスポーンするまでの追加の時間")
Language:add(code, "Bot Health at spawn", "スポーン時のボットの健全性")
Language:add(code, "Max health of bot (default 100.0)", "ボットの最大ヘルス (デフォルト 100.0)")

--SPAWNLIMITS
Language:add(code, "Max Bots Per Team (default)", "チームごとの最大ボット数 (デフォルト)")
Language:add(code, "Max number of bots in one team, if no other mode fits", "他のモードが適合しない場合、1 つのチーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (TDM)", "チームあたりの最大ボット数 (TDM)")
Language:add(code, "Max number of bots in one team for TDM", "TDM の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (TDM-CQ)", "チームあたりの最大ボット数 (TDM-CQ)")
Language:add(code, "Max number of bots in one team for TDM-CQ", "TDM-CQ の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (Squad-DM)", "チームごとの最大ボット数 (Squad-DM)")
Language:add(code, "Max number of bots in one team for Squad-DM", "Squad-DM の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (CQ-Large)", "チームあたりの最大ボット数 (CQ-Large)")
Language:add(code, "Max number of bots in one team for CQ-Large", "CQ-Large の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (CQ-Small)", "チームあたりの最大ボット数 (CQ-Small)")
Language:add(code, "Max number of bots in one team for CQ-Small", "CQ-Small の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (CQ-Assault-Large)", "チームあたりの最大ボット数 (CQ-Assault-Large)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Large", "CQ-Assault-Large の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (CQ-Assault-Small)", "チームあたりの最大ボット数 (CQ-Assault-Small)")
Language:add(code, "Max number of bots in one team for CQ-Assault-Small", "CQ-Assault-Small の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (Rush)", "チームあたりの最大ボット数 (ラッシュ)")
Language:add(code, "Max number of bots in one team for Rush", "Rush の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (CTF)", "チームあたりの最大ボット数 (CTF)")
Language:add(code, "Max number of bots in one team for CTF", "CTF の 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (Domination)", "チームあたりの最大ボット数 (支配)")
Language:add(code, "Max number of bots in one team for Domination", "ドミネーションの 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (Gunmaster)", "チームごとの最大ボット数 (ガンマスター)")
Language:add(code, "Max number of bots in one team for Gunmaster", "ガンマスターの 1 チーム内のボットの最大数")
Language:add(code, "Max Bots Per Team (Scavenger)", "チームあたりの最大ボット数 (スカベンジャー)")
Language:add(code, "Max number of bots in one team for Scavenger", "スカベンジャーの 1 チーム内のボットの最大数")

--BEHAVIOUR
Language:add(code, "FOV of Bots", "ボットのFOV")
Language:add(code, "Degrees of FOV of Bot", "ボットの視野角")
Language:add(code, "FOV of Bots Verticle", "ボット垂直の FOV")
Language:add(code, "Degrees of FOV of Bot in vertical direction", "垂直方向のボットの FOV の角度")
Language:add(code, "Max Shoot-Distance No Sniper", "最大射撃距離 スナイパーなし")
Language:add(code, "Meters before bots (not sniper) will start shooting at players", "ボット (スナイパーではない) がプレイヤーを撃ち始める数メートル前")
Language:add(code, "Max Shoot Distance Sniper", "最大射撃距離スナイパー")
Language:add(code, "Meters before bots will start shooting at players", "ボットがプレイヤーを撃ち始める数メートル前")
Language:add(code, "Max Distance a normal soldier shoots back if Hit", "ヒットした場合、通常の兵士が撃ち返す最大距離")
Language:add(code, "Meters until bots (not sniper) shoot back if hit", "攻撃を受けた場合、ボット (スナイパーではない) が撃ち返すまでのメートル")
Language:add(code, "Max Distance a sniper soldier shoots back if Hit", "狙撃兵がヒットした場合に撃ち返す最大距離")
Language:add(code, "Meters until snipers shoot back if hit", "スナイパーがヒットした場合に撃ち返すまでのメートル")
Language:add(code, "Max Shoot-Distance Pistol", "最大射程ピストル")
Language:add(code, "The distance before a bot switches to pistol if his magazine is empty (Only in auto-weapon-mode)", "ボットのマガジンが空の場合、ボットがピストルに切り替えるまでの距離 (自動武器モードのみ)")
Language:add(code, "Bot Attack Mode", "ボット攻撃モード")
Language:add(code, "Mode the Bots attack with. Random, Crouch or Stand", "ボットの攻撃をモードにします。ランダム、しゃがむ、または立つ")
Language:add(code, "Shoot Back if Hit", "当たったら撃ち返す")
Language:add(code, "Bot shoots back if hit", "ヒットするとボットが撃ち返す")
Language:add(code, "Bots Attack Bots", "ボット攻撃ボット")
Language:add(code, "Bots attack bots from other team", "ボットが他のチームのボットを攻撃する")
Language:add(code, "Melee Attack If Close", "近接攻撃")
Language:add(code, "Bot attacks with melee if close", "ボットが接近すると近接攻撃する")
Language:add(code, "Bots can kill themself", "ボットは自分自身を殺すことができます")
Language:add(code, "Bot takes falldamage or explosion-damage from own frags", "ボットは自身の破片から落下ダメージまたは爆発ダメージを受ける")
Language:add(code, "Bots teleport them when stuck", "立ち往生するとボットがテレポートする")
Language:add(code, "Bot teleport to their target if they are stuck", "立ち往生している場合、ボットはターゲットにテレポートします")
Language:add(code, "Bots revive players", "ボットがプレイヤーを復活させる")
Language:add(code, "Bots revive other players", "ボットは他のプレイヤーを復活させます")
Language:add(code, "Bots throw grenades", "ボットが手榴弾を投げる")
Language:add(code, "Bots deploy bags", "ボットはバッグを展開します")
Language:add(code, "Bots deploy ammo and medkits", "ボットは弾薬と医療キットを展開します")
Language:add(code, "Deploy Cycle", "導入サイクル")
Language:add(code, "Time between deployment of bots in seconds", "ボットのデプロイ間隔 (秒)")
Language:add(code, "Move Sidewards", "横に移動")
Language:add(code, "Bots move sidewards", "ボットは横に移動します")
Language:add(code, "Max straight Cycle", "最大直線サイクル")
Language:add(code, "Max time bots move straight, before sidewards-movement (in sec)", "ボットが横に移動する前にまっすぐ移動する最大時間 (秒)")
Language:add(code, "Max Side Cycle", "最大サイド サイクル")
Language:add(code, "Max time bots move sidewards, before straight-movement (in sec)", "ボットが直進する前に横に移動する最大時間 (秒)")
Language:add(code, "Min Move Cycle", "最小移動サイクル")
Language:add(code, "Min time bots move sidewards or staight before switching (in sec)", "ボットが切り替え前に横または直進する最小時間 (秒)")

--VEHICLE
Language:add(code, "Use vehicles", "車両を使用する")
Language:add(code, "Bots can use vehicles", "ボットは車両を使用できます")
Language:add(code, "Use air vehicles", "航空機を利用する")
Language:add(code, "Bots can use air-vehicles", "ボットは航空機を使用できます")
Language:add(code, "FOV of Vehicles", "車両のFOV")
Language:add(code, "FOV of Vehicles Verticle", "車両垂直方向の FOV")
Language:add(code, "Degrees of FOV of Non AA - Vehicles", "非 AA の視野角 - 車両")
Language:add(code, "FOV of Chopper Verticle", "Chopper Verticle の FOV")
Language:add(code, "Degrees of pitch a chopper attacks", "チョッパーが攻撃するピッチの角度")
Language:add(code, "FOV of AA-Vehicles", "AA 車両の FOV")
Language:add(code, "Degrees of FOV of AA - Vehicles", "AA の視野角 - 車両")
Language:add(code, "FOV of AA-Vehicles Verticle", "AA-Vehicles Verticle の FOV")
Language:add(code, "Degrees of FOV of AA - Vehicles", "AA の視野角 - 車両")
Language:add(code, "Max Raycast Distance for Vehicles", "ビークルの最大レイキャスト距離")
Language:add(code, "Meters bots in Vehicles start shooting at players", "ビークルのメーターボットがプレイヤーに向かって発砲し始める")
Language:add(code, "Max Shoot-Distance No Anti Air", "最大射程 対空なし")
Language:add(code, "Meters bots in vehicle (no Anti-Air) starts shooting at players", "ビークル内のメーターボット (対空なし) がプレイヤーに向かって発砲し始める")
Language:add(code, "Time a vehicle driver waits for passengers", "車の運転手が乗客を待つ時間")
Language:add(code, "Seconds to wait for other passengers", "他の乗客を待つ秒数")
Language:add(code, "Choppers Attack", "チョッパーアタック")
Language:add(code, "If false choppers only attack without gunner on board", "偽チョッパーが砲手を乗せずに攻撃するだけの場合")
Language:add(code, "Activate Auto-AA", "自動AAを有効にする")
Language:add(code, "Enable Auto-AA by NyScorpy", "NyScorpy による自動 AA を有効にする")
Language:add(code, "Max Distance Auto-AA", "最大距離自動 AA")
Language:add(code, "Max Range of Stationary AA", "固定対空砲の最大射程")

--WEAPONS
Language:add(code, "Random Weapon usage", "ランダムな武器の使用")
Language:add(code, "Use a random weapon out of the weaponset", "武器セットからランダムな武器を使用する")
Language:add(code, "Weapon Set Assault", "ウェポンセットアサルト")
Language:add(code, "Weaponset of Assault class. Custom uses the Shared/WeaponLists", "アサルトクラスの武器セット。カスタムは Shared/WeaponLists を使用します")
Language:add(code, "Weapon Set Engineer", "ウェポンセットエンジニア")
Language:add(code, "Weaponset of Engineer class. Custom uses the Shared/WeaponLists", "エンジニアクラスの武器セット。カスタムは Shared/WeaponLists を使用します")
Language:add(code, "Weapon Set Support", "武器セットのサポート")
Language:add(code, "Weaponset of Support class. Custom uses the Shared/WeaponLists", "サポートクラスの武器セット。カスタムは Shared/WeaponLists を使用します")
Language:add(code, "Weapon Set Recon", "武器セット偵察")
Language:add(code, "Weaponset of Recon class. Custom uses the Shared/WeaponLists", "偵察クラスの武器セット。カスタムは Shared/WeaponLists を使用します")
Language:add(code, "Primary Weapon Assault", "メインウェポンアサルト")
Language:add(code, "Primary weapon of Assault class, if random-weapon == false", "random-weapon == false の場合、Assault クラスのプライマリ武器")
Language:add(code, "Primary Weapon Engineer", "プライマリ ウェポン エンジニア")
Language:add(code, "Primary weapon of Engineer class, if random-weapon == false", "random-weapon == false の場合、エンジニア クラスのプライマリ武器")
Language:add(code, "Primary Weapon Support", "メインウェポンのサポート")
Language:add(code, "Primary weapon of Support class, if random-weapon == false", "random-weapon == false の場合、サポート クラスのプライマリ武器")
Language:add(code, "Primary Weapon Recon", "メインウェポン偵察")
Language:add(code, "Primary weapon of Recon class, if random-weapon == false", "random-weapon == false の場合、Recon クラスのプライマリ武器")
Language:add(code, "Pistol of Bots", "ボットのピストル")
Language:add(code, "Pistol of Bots, if random-weapon == false", "ボットのピストル、random-weapon == false の場合")
Language:add(code, "Knife of Bots", "ボットのナイフ")
Language:add(code, "Knife of Bots, if random-weapon == false", "ボットのナイフ、random-weapon == false の場合")

--TRACE
Language:add(code, "Debug Trace Paths", "デバッグ トレース パス")
Language:add(code, "Waypoint Range", "ウェイポイント範囲")
Language:add(code, "Set how far away waypoints are visible (meters)", "ウェイポイントが見える距離 (メートル) を設定します")
Language:add(code, "Draw Waypoint Lines", "ウェイポイント ラインを描画する")
Language:add(code, "Draw waypoint connection Lines", "ウェイポイント接続線を引く")
Language:add(code, "Line Range", "ライン範囲")
Language:add(code, "Set how far away waypoint lines are visible (meters)", "ウェイポイント ラインが表示される距離 (メートル) を設定します")
Language:add(code, "Draw Waypoint IDs", "ウェイポイント ID を描画する")
Language:add(code, "Text Range", "テキスト範囲")
Language:add(code, "Set how far away waypoint text is visible (meters)", "ウェイポイントのテキストが表示される距離を設定します (メートル)")
Language:add(code, "Draw Spawn Points", "スポーンポイントを引く")
Language:add(code, "Range of Spawnpoints", "スポーンポイントの範囲")
Language:add(code, "Set how far away spawnpoints are visible (meters)", "スポーンポイントが見える距離 (メートル) を設定します")
Language:add(code, "Shows the trace line and search area from Commo Rose selection", "Commo Rose セレクションからトレース ラインと検索領域を表示します")
Language:add(code, "Trace Delta Points", "デルタ ポイントのトレース")
Language:add(code, "Update interval of trace", "トレースの更新間隔")
Language:add(code, "Nodes that are drawn per cycle", "サイクルごとに描画されるノード")
Language:add(code, "Set how many nodes get drawn per cycle. Affects performance", "サイクルごとに描画されるノードの数を設定します。パフォーマンスへの影響")

--ADVANCED
Language:add(code, "Distance for direct attack", "直接攻撃の距離")
Language:add(code, "Distance bots can hear you at", "ボットがあなたの声を聞くことができる距離")
Language:add(code, "Bot melee attack cool-down", "ボットの近接攻撃のクールダウン")
Language:add(code, "The time a bot waits before attacking with melee again", "ボットが再び近接攻撃するまでの待機時間")
Language:add(code, "Bots without sniper aim for head", "狙撃兵のいないボットは頭を狙う")
Language:add(code, "Bots without sniper aim for the head. More an experimental config", "スナイパーのいないボットは頭を狙います。もっと実験的な設定")
Language:add(code, "Bots with Sniper aim for head", "スナイパーが頭を狙うボット")
Language:add(code, "Bots with sniper aim for the head. More an experimental config", "狙撃兵のボットは頭を狙います。もっと実験的な設定")
Language:add(code, "Bots with Support LMGs aim for head", "サポートLMGを搭載したボットが頭を狙う")
Language:add(code, "Bots with support LMGs aim for the head. More an experimental config", "LMG をサポートするボットは頭を狙います。もっと実験的な設定")
Language:add(code, "Jump while shooting", "射撃中にジャンプ")
Language:add(code, "Bots jump over obstacles while shooting if needed", "ボットは、必要に応じて射撃中に障害物を飛び越えます")
Language:add(code, "Jump while moving", "移動しながらジャンプ")
Language:add(code, "Bots jump while moving. If false, only on obstacles!", "ボットは移動中にジャンプします。 false の場合、障害物上のみ!")
Language:add(code, "Overwrite speed mode", "上書き速度モード")
Language:add(code, "0 = no overwrite. 1 = prone, 2 = crouch, 3 = walk, 4 = run", "0 = 上書きなし。 1 = 腹臥位、2 = しゃがむ、3 = 歩く、4 = 走る")
Language:add(code, "Overwrite attack speed mode", "上書き攻撃速度モード")
Language:add(code, "Affects Aiming!!! 0 = no overwrite. 1 = prone, 2 = crouch (good aim), 3 = walk (good aim), 4 = run", "照準に影響!!! 0 = 上書きなし。 1 = 伏せ、2 = しゃがむ (狙いを定める)、3 = 歩く (狙いを定める)、4 = 走る")
Language:add(code, "Speed facator", "スピードファクター")
Language:add(code, "Reduces the movementspeed. 1 = normal, 0 = standing.", "移動速度を低下させます。 1 = 通常、0 = 立っています。")
Language:add(code, "Speed facator attack", "スピードファクター攻撃")
Language:add(code, "Reduces the movementspeed while attacking. 1 = normal, 0 = standing.", "攻撃中の移動速度を低下させる。 1 = 通常、0 = 立っています。")
Language:add(code, "Use Random Names", "ランダムな名前を使用する")
Language:add(code, "Changes names of the bots on every new round. Experimental right now...", "新しいラウンドごとにボットの名前を変更します。ただいま実験中…")

--EXPERT
Language:add(code, "Bot first shot delay", "ボットの最初のショットの遅延")
Language:add(code, "Delay for first shot. If too small, there will be great spread in first cycle because its not compensated yet.", "最初のショットの遅延。小さすぎると、まだ補償されていないため、最初のサイクルで大きなスプレッドが発生します。")
Language:add(code, "Bot min time shoot at player", "プレーヤーでのボット最小時間シュート")
Language:add(code, "The minimum time a bot shoots at one player for - recommended minimum 1.5, below this you will have issues.", "ボットが 1 人のプレイヤーを撃つ最小時間 - 推奨される最小値は 1.5 です。これを下回ると問題が発生します。")
Language:add(code, "Bot min time shoot at player in vehicle", "車両内のプレーヤーを撃つボットの最小時間")
Language:add(code, "The minimum time a bot shoots at one player if in vehicle - recommended minimum 2.5, below this you will have issues.", "車両に乗っている場合、ボットが 1 人のプレイヤーを撃つ最小時間 - 推奨される最小時間は 2.5 ですが、これを下回ると問題が発生します。")
Language:add(code, "Bot fire mode duration", "ボット発射モードの持続時間")
Language:add(code, "The minimum time a bot tries to shoot a player - recommended minimum 3.0, below this you will have issues.", "ボットがプレイヤーを撃とうとする最小時間 - 推奨される最小値は 3.0 です。これを下回ると問題が発生します。")
Language:add(code, "Bot fire mode duration in vehicle", "ビークルでのボット射撃モードの持続時間")
Language:add(code, "The minimum time a bot tries to shoot a player or vehicle, when in a vehicle - recommended minimum 7.0.", "車両に乗っているときに、ボットがプレイヤーまたは車両を撃とうとする最小時間 - 推奨される最小値は 7.0 です。")
Language:add(code, "Maximum yaw per sec", "最大ヨー/秒")
Language:add(code, "in Degrees. Rotaion-Movement per second.", "度で。 Rotaion-1 秒あたりの移動。")
Language:add(code, "Target distance waypoint", "目標距離ウェイポイント")
Language:add(code, "Distance the bots have to reach to continue with the next Waypoint", "ボットが次のウェイポイントに進むために到達しなければならない距離")
Language:add(code, "Keep one slot for players", "プレイヤー用に 1 つのスロットを確保する")
Language:add(code, "Always keep one slot for free new Players to join", "無料の新規プレイヤーが参加できるように、常に 1 つのスロットを保持します")
Language:add(code, "Distance to spawn", "スポーンまでの距離")
Language:add(code, "Distance to spawn Bots away from players.", "プレイヤーから離れた場所にボットをスポーンする距離。")
Language:add(code, "Height distance to spawn", "スポーンまでの高さ")
Language:add(code, "Distance vertically, Bots should spawn away, if closer than distance.", "垂直方向の距離。距離より近い場合、ボットは離れてスポーンする必要があります。")
Language:add(code, "Distance to spawn reduction", "スポーンまでの距離の短縮")
Language:add(code, "Reduce distance if not possible.", "無理なら距離を縮める。")
Language:add(code, "Max tries to spawn at distance", "マックスは遠くにスポーンしようとします")
Language:add(code, "Try this often to spawn a bot away from players", "これを頻繁に試して、ボットをプレイヤーから離れた場所にスポーンさせます")
Language:add(code, "Attack way Bots", "攻撃方法ボット")
Language:add(code, "Bots on paths attack player", "経路上のボットがプレイヤーを攻撃")
Language:add(code, "Respawn way Bots", "リスポーンウェイボット")
Language:add(code, "Bots on paths respawn if killed", "経路上のボットが殺されるとリスポーンする")
Language:add(code, "Spawn-Mehtod", "スポーン方法")
Language:add(code, "Method the bots spawn with. Careful, not supported on most of the maps!!", "ボットがスポーンする方法。ほとんどのマップではサポートされていないため、注意してください!!")

--OTHER
Language:add(code, "Disable UI", "UI を無効にする")
Language:add(code, "If true, the complete UI will be disabled (not available in the UI -) )", "true の場合、完全な UI が無効になります (UI では使用できません -) )")
Language:add(code, "Allow Comm-UI for all", "すべての通信 UI を許可する")
Language:add(code, "If true, all Players can access the Comm-Screen", "true の場合、すべてのプレイヤーが通信画面にアクセスできます")
Language:add(code, "Disable chat-commands", "チャット コマンドを無効にする")
Language:add(code, "If true, no chat commands can be used", "true の場合、チャット コマンドは使用できません")
Language:add(code, "Disable RCON-commands", "RCON コマンドを無効にする")
Language:add(code, "If true, no RCON commands can be used", "true の場合、RCON コマンドは使用できません")
Language:add(code, "Ignore Permissions", "権限を無視")
Language:add(code, "If true, all permissions are ignored --> everyone can do everything", "true の場合、すべての権限が無視されます --> 誰もがすべてを実行できます")
Language:add(code, "Language", "言語")
Language:add(code, "de_DE as sample (default is english, when language file doesnt exists)", "サンプルとして de_DE (言語ファイルが存在しない場合、デフォルトは英語)")

-- Strings of ./../../ext/Client/ClientNodeEditor.lua

-- Strings of ./../../ext/Server/BotSpawner.lua
Language:add(code, "CANT_JOIN_BOT_TEAM", "CANT_JOIN_BOT_TEAM")

-- Strings of ./../../ext/Server/UIServer.lua
Language:add(code, "A", "あ")
Language:add(code, "B", "B")
Language:add(code, "C", "C")
Language:add(code, "D", "D")
Language:add(code, "Attack", "攻撃")
Language:add(code, "E", "え")
Language:add(code, "F", "ふ")
Language:add(code, "G", "G")
Language:add(code, "H", "H")
Language:add(code, "Back", "戻る")
Language:add(code, "Defend", "守る")
Language:add(code, "Bot respawn activated!", "ボットのリスポーンが有効になりました!")
Language:add(code, "Bot respawn deactivated!", "ボットのリスポーンが無効化されました!")
Language:add(code, "Bots will attack!", "ボットが攻撃します！")
Language:add(code, "Bots will not attack!", "ボットは攻撃しません！")
Language:add(code, "%s is currently not implemented.", "%s は現在実装されていません。")
Language:add(code, "Exit Vehicle", "出口車両")
Language:add(code, "Enter Vehicle", "乗り物に入る")
Language:add(code, "Drop Ammo", "弾薬を落とす")
Language:add(code, "Drop Medkit", "ドロップメディキット")
Language:add(code, "Commands", "コマンド")
Language:add(code, "Attack Objective", "攻撃目標")
Language:add(code, "Defend Objective", "防御目標")
Language:add(code, "Repair Vehicle", "修理車両")
Language:add(code, "Settings has been saved temporarily.", "設定が一時的に保存されました。")
Language:add(code, "Settings has been saved.", "設定が保存されました。")

-- Strings of ./../../ext/Server/NodeCollection.lua
Language:add(code, "Loaded %d paths with %d waypoints for map %s", "マップ %s の %d ウェイポイントを含む %d パスをロードしました")
Language:add(code, "Save in progress...", "保存中...")
Language:add(code, "Failed to execute query: %s", "クエリの実行に失敗しました: %s")
Language:add(code, "Saved %d paths with %d waypoints for map %s", "マップ %s の %d 個のパスと %d 個のウェイポイントを保存しました")
Language:add(code, "Bots throw grenades at enemies", "ボットが敵にグレネードを投げる")
Language:add(code, "Degrees of vertical FOV of Non AA - Vehicles", "非 AA の垂直 FOV の角度 - 車両")
Language:add(code, "Draw the IDs of the waypoints", "ウェイポイントの ID を描画する")
Language:add(code, "Draw the Points where players can spawn", "プレイヤーがスポーンできるポイントを描く")
Language:add(code, "Snipers attack choppers", "スナイパーがチョッパーを攻撃")
Language:add(code, "Bots with sniper-rifels attack choppers", "スナイパーライフルを持つボットがチョッパーを攻撃")
