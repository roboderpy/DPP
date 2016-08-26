
--[[
Copyright (C) 2016 DBot

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]

local en = {
	scvar_base = '%s\n\nConVar: dpp_%s',
	model = 'Model',
	add_model = 'Add model',
	remove_model = 'Remove model',
	action_looking_at = '%s of entity you are looking at',
	visual_list = 'Open visual list',
	apply = 'Apply',
	discard = 'Discard',
	modifying = 'Modifying %s',
	sharing = 'Share settings of %s',
	unshare = 'Uncheck all and apply',
	
	remove_my_ents = 'Remove my entities',
	display_customization_color = 'Display colors customization',
	display_customization = 'Display customization',
	display_x = 'X coordinate (percent) on screen for owner display',
	display_y = 'Y coordinate (percent) on screen for owner display',
	
	clear_decals = 'Clear decals',
	report_ents = 'Collect and print info about entities',
	delete_ents = 'Delete all player entities',
	
	freeze_all = 'Freeze all player entities',
	freeze_all_phys = 'Freeze all physics objects',
	delete_disconnected = 'Delete disconnected player entities',
	action_unfreeze = 'UF',
	action_freeze = 'F',
	action_delete = 'D',
	fallback_select = 'Current selected player: %s\nSteamID: %s',
	fallback_select_none = 'Current selected player: None\n',
	owning_fallback = 'This page is "owning fallback"\nWhen you disconnect from server, DPP will assign\nownership of your props to selected player.',
	owning_fallback_r = 'Remove Fallback',
	disable_protection_for = 'Disable %q protection for %s',
	clipboard = 'Copy %s to clipboard',
	model_path = 'model path',
	Unblock = 'Unblock',
	model_blacklist = 'Model blacklist',
	model_blacklist_2 = 'Model blacklist. To open menu of model, click on model icon.',
	Resizeable = 'Resizeable',
	click_reset = 'Click here to reset window size.',
	remove_from_blacklist = 'Remove from blacklist',
	Class = 'Class',
	Group = 'Group',
	Groups = 'Groups',
	Limit = 'Limit',
	Entity = 'Entity',
	tool_mode = 'tool mode',
	add_tool_mode = 'Add tool mode',
	remove_tool_mode = 'Remove tool mode',
	property_types_edit = 'DPP Property Types Edit',
	add_to_all_blacklists = 'Add that entity to ALL blacklists',
	add_to_all_blacklists_this = 'Add this entity to ALL blacklists',
	remove_from_all_blacklists = 'Remove that entity from ALL blacklists',
	remove_from_all_blacklists_this = 'Remove this entity from ALL blacklists',
	edit_limit = 'Add/Edit limit',
	edit_limit_a = 'Add/Edit/Remove limit',
	edit_limit_e = 'Edit limit...',
	remove_limit = 'Remove limit',
	remove_limit_all = 'Remove this limit from all groups',
	entity_limit_note = 'NOTE: This just prevents the player from spawning\n entities with the given class if the player spawned\n the given amount of entities within this class.\nThat means it DOES NOT allow groups to spawn\n unlimited amounts of entities within that\n type. For that use the Sandbox limits\n instead.',
	limit_tip = 'Unlimited: -1\n0 - removes limit from db\nAny values higher than 0 is a limit',
	sbox_limit_note = 'WHAT THIS DOES:\nIt\'s the console variable sbox_max<...> overrides for user groups.\nTo add values, you must know the console variable you are changing.\nExample: Modifying prop limits would be "props" (sbox_maxprops).\nA value of -1 is unlimited, and 0 leaves the limit unmodified.',
	constraints_limit_tip = 'You can see type of constraints in DPP logs\nATTENTION: Because of nature of rope constraints\nDPP thinks that keyframe_rope is a "vrope"\nconstraint because rope (and related) constraints\n creating keyframe_rope too to show visual rope.',
	sbox_max = 'sbox_max...',
	remove_from_restrict_list = 'Remove from restrict list',
	modify_r = 'Modify...',
	add_r = 'Add...',
	edit_r = 'Edit...',
	remove_friend = 'Remove friend',
	add_friend = 'Add %s to friend list',
	nick = 'Nick',
	steamid = 'SteamID',
	add_steamid = 'Add by SteamID',
	cvar_name = 'console variable name',
	add_entity = 'Add entity',
	remove_entity = 'Remove entity',
	add_blacklist_looking_at = 'Add the entity you are looking at to the blacklist',
	add_blacklist_looking_at_all = 'Add the entity you are looking at to the ALL blacklists',
	remove_blacklist_looking_at = 'Add the entity you are looking at to the blacklist',
	remove_blacklist_looking_at_all = 'Add the entity you are looking at to the ALL blacklists',
	is_white = 'Is Whitelist',
	about_header = 'DPP was created by DBot\nI tried to make it situable for all kinds of servers\nthat needs protect from minges',
	about_thumbup = 'Can we have a free like please?\nPlease?! or i will cry ;n;',
	about_star = 'Can we have a free star please?\nPlease?! or i will cry ;n;',
	about_bug = 'Can we have a free bug report please?\nPlease?!',
	about_issues = 'DPP issues page',
	display_customization_colors = 'Display colors customization',
	
	remove_exclude = 'Remove from exclude list',
	add_exclude_all = 'Add that entity to ALL exclude lists',
	remove_exclude_all = 'Remove that entity from ALL exclude lists',
	
	add_exclude_looking_at = 'Add the entity you are looking at to the exclude list',
	add_exclude_looking_at_all = 'Add the entity you are looking at to the ALL exclude lists',
	remove_exclude_looking_at = 'Remove the entity you are looking at to the exclude list',
	remove_exclude_looking_at_all = 'Remove the entity you are looking at to the ALL exclude lists',
	
	toolmode_exclude_tip = [[
This list defines toolgun modes that is allowed to be 
used on ANY entity. For example, if you add "remover" 
there, anyone can remove any entity using remover toolgun.
REMEMBER: Blacklists are ALWAYS have higher priority
than other lists! That means excluded tool modes
can NOT be used on blacklisted from toolgun entities.
]],
	exclude_tip = [[
Entities what listed there will have
%q protection disabled. It means that
ANYONE able to touch that entitiy despite of it's owner
REMEMBER: Blacklists are ALWAYS have higher priority
than other lists! That means blacklist will override
any whitelist!
]],

	property_exclude_tip = [[
This list defines property types that is allowed to be 
used on ANY entity. For example, if you add "remover" 
there,  anyone can remove any entity using property menus. 
To see all property classes, type use button below.
REMEMBER: Blacklists are ALWAYS have higher priority
than other lists! That means excluded property
modes can NOT be used on blacklisted toolgun
entities.
]],

	properties_list = 'Open properties list...',
	property_class = 'Property Class',
	add_property = 'Add Property',
	remove_property = 'Remove Property',
	tool_exclude = '\nNOTE FOR TOOLGUN: "remover" still can\'t be used\non whitelisted entities.',
}

local ru = {
	scvar_base = '%s\n\nКонсольная переменная: dpp_%s',
	model = 'Модель',
	add_model = 'Добавить модель',
	remove_model = 'Удалить модель',
	action_looking_at = '%s от энтити на которые Вы смотрите',
	visual_list = 'Открыть графическое представление',
	apply = 'Применить',
	discard = 'Отмена',
	modifying = 'Изменение %s',
	
	cvar_disable_veh_world = 'Disable "Vehicle" protection for world entities',
	cvar_antispam_ghost = 'Ghost thresold',
	cvar_blacklist_physgun_white = 'Physgun blacklist is a white list.',
	cvar_antispam_max = 'Max amount of counted entities (max cooldown in spawned count)',
	cvar_restrict_vehicle_white = 'Vehicle restrictions acts as a whitelist',
	cvar_restrict_swep_white_bypass = 'Admins can bypass SWEP whitelist (spawn/use unlisted things)',
	cvar_enable_tool = 'Enable "Tool" protection',
	cvar_prop_auto_ban = 'Add huge models to blacklist by auto',
	cvar_blacklist_pickup = 'Enable Pickup blacklist',
	cvar_restrict_sent = 'Enable SENT restrictions',
	cvar_clear_timer = 'Clear time in seconds',
	cvar_blacklist_tool_player_can = 'Can players touch ents from Tool blacklist?',
	cvar_toolgun_player = 'Prevent toolgun usage on players',
	cvar_blacklist_tool = 'Enable Tool blacklist',
	cvar_antispam_cooldown_divider = 'Lower means faster cooldown',
	cvar_enable_damage = 'Enable "Damage" protection',
	cvar_verbose_logging = 'Log everything (Any spawn detected through the advanced check)',
	cvar_sbox_limits_enable = 'Sandbox limits toggle',
	cvar_apropkill_vehicle = 'Disable vehicle collisions',
	cvar_grabs_disconnected = 'Enable "Up for grabs" for disconnected player entities',
	cvar_blacklist_tool_admin_can = 'Can admin touch ents from Tool blacklist?',
	cvar_admin_can_everything = 'Admins can touch everything',
	cvar_restrict_pickup_white_bypass = 'Admins can bypass Pickup whitelist (spawn/use unlisted things)',
	cvar_blacklist_pickup_player_can = 'Can players touch ents from Pickup blacklist?',
	cvar_antispam_toolgun = 'Delay in seconds between toolgun use',
	cvar_enable_veh = 'Enable "Vehicle" protection',
	cvar_enable_use = 'Enable "Use" protection',
	cvar_prop_auto_ban_size = 'Size limit',
	cvar_blacklist_physgun_admin_can = 'Can admin touch ents from Physgun blacklist?',
	cvar_max_size = 'Sizes of big prop',
	cvar_blacklist_toolworld_admin_can = 'Can admin touch ents from ToolgunWorld blacklist?',
	cvar_restrict_model_white_bypass = 'Admins can bypass Model whitelist (spawn/use unlisted things)',
	cvar_can_admin_physblocked = 'Can admins physgun blocked entities',
	cvar_whitelist_damage = 'Enable Damage exclude list',
	cvar_restrict_property_white_bypass = 'Admins can bypass Property whitelist (spawn/use unlisted things)',
	cvar_blacklist_damage = 'Enable Damage blacklist',
	cvar_clear_disconnected = 'Clear disconnected player entities',
	cvar_model_blacklist = 'Enable model blacklist',
	cvar_antispam = 'Prevent spamming',
	cvar_apropkill_clampspeed = 'Clamp the maximal speed of prop move using physgun',
	cvar_blacklist_pickup_admin_can = 'Can admin touch ents from Pickup blacklist?',
	cvar_strict_property = '[Experimental!] Enable strict property protection',
	cvar_restrict_npc_white_bypass = 'Admins can bypass NPC whitelist (spawn/use unlisted things)',
	cvar_apropkill_damage_noworld = 'World owned entities bypass damage check',
	cvar_check_sizes = 'Check the sizes of entities',
	cvar_allow_damage_npc = 'Allow damage NPCs even if damage protection is enabled',
	cvar_restrict_model_white = 'Model restrictions acts as a whitelist',
	cvar_no_clear_messages = 'Disable cleanup messages for disconnected players',
	cvar_whitelist_physgun = 'Enable Physgun exclude list',
	cvar_restrict_e2function_white = 'E2Function restrictions acts as a whitelist',
	cvar_blacklist_gravgun_player_can = 'Can players touch ents from Gravgun blacklist?',
	cvar_can_touch_world = 'Players can touch world entites',
	cvar_enable_physgun = 'Enable "Physgun" protection',
	cvar_prevent_explosions_crash_num = 'Max explosion count on one frame. Change with care!!',
	cvar_unfreeze_antispam_delay = 'Delay between unfreezing in seconds',
	cvar_blacklist_physgun = 'Enable Physgun blacklist',
	cvar_toolgun_player_admin = 'Prevent admin toolgun usage on players',
	cvar_enable_lists = 'Enable restrictions',
	cvar_disable_unfreeze = 'Disable physgun unfreeze (Reload)',
	cvar_can_admin_touch_world = 'Admins can touch world entities',
	cvar_whitelist_pickup = 'Enable Pickup exclude list',
	cvar_restrict_swep_white = 'SWEP restrictions acts as a whitelist',
	cvar_disable_gravgun_world = 'Disable "Gravgun" protection for world entities',
	cvar_unfreeze_antispam = 'Prevent physgun unfreeze (Reload) spam',
	cvar_apropkill_enable = 'Anti-Propkill Master Toggle',
	cvar_whitelist_gravgun = 'Enable Gravgun exclude list',
	cvar_enable_blocked = 'Enable blacklists',
	cvar_restrict_e2afunction_white = 'E2AFunction restrictions acts as a whitelist',
	cvar_blacklist_toolworld_player_can = 'Can players touch ents from ToolgunWorld blacklist?',
	cvar_apanti_disable = 'Disable APAnti ghosting',
	cvar_restrict_model = 'Enable Model restrictions',
	cvar_blacklist_damage_player_can = 'Can players touch ents from Damage blacklist?',
	cvar_enable_drive = 'Enable "Drive" (property menu->Drive) protection',
	cvar_restrict_e2function_white_bypass = 'Admins can bypass E2Function whitelist (spawn/use unlisted things)',
	cvar_whitelist_toolmode = 'Enable ToolMode exclude list',
	cvar_restrict_e2function = 'Enable E2Function restrictions',
	cvar_restrict_sent_white = 'SENT restrictions acts as a whitelist',
	cvar_apropkill_nopush_mode = 'False - player only, True - ALL collisions',
	cvar_const_limits_enable = 'Constrains limits toggle',
	cvar_whitelist_property = 'Enable Property exclude list',
	cvar_disable_use_world = 'Disable "Use" protection for world entities',
	cvar_enable_gravgun = 'Enable "Gravgun" protection',
	cvar_restrict_npc = 'Enable NPC restrictions',
	cvar_ent_limits_enable = 'Enable entity limits list',
	cvar_clear_disconnected_admin = 'Clear disconnected admin entities',
	cvar_blacklist_toolworld_white = 'ToolgunWorld blacklist is a white list.',
	cvar_restrict_property = 'Enable Property restrictions',
	cvar_restrict_vehicle = 'Enable Vehicle restrictions',
	cvar_restrict_property_white = 'Property restrictions acts as a whitelist',
	cvar_whitelist_propertyt = 'Enable PropertyType exclude list',
	cvar_blacklist_gravgun_admin_can = 'Can admin touch ents from Gravgun blacklist?',
	cvar_grabs_disconnected_admin = 'Enable "Up for grabs" for disconnected admin entities',
	cvar_enable = 'Main power switch (Enable Protection)',
	cvar_apropkill_damage = 'Anti-Propkill',
	cvar_restrict_vehicle_white_bypass = 'Admins can bypass Vehicle whitelist (spawn/use unlisted things)',
	cvar_restrict_pickup = 'Enable Pickup restrictions',
	cvar_prevent_player_stuck = 'Prevent prop-trapping',
	cvar_restrict_tool = 'Enable Tool restrictions',
	cvar_restrict_tool_white = 'Tool restrictions acts as a whitelist',
	cvar_restrict_tool_white_bypass = 'Admins can bypass Tool whitelist (spawn/use unlisted things)',
	cvar_restrict_swep = 'Enable SWEP restrictions',
	cvar_allow_damage_vehicles = 'Allow damage of vehicles even if damage protection is enabled',
	cvar_prevent_explosions_crash = '[Experimental!] Prevent the server from crashing from too many explosions in one instance (May not work, some addons may break.)',
	cvar_enable_whitelisted = 'Enable exclude lists',
	cvar_blacklist_gravgun_white = 'Gravgun blacklist is a white list.',
	cvar_allow_damage_sent = 'Allow damage of other player\'s SENTs even if damage protection is enabled',
	cvar_blacklist_damage_admin_can = 'Can admin touch ents from Damage blacklist?',
	cvar_blacklist_use_player_can = 'Can players touch ents from Use blacklist?',
	cvar_log_file = 'Log things into files',
	cvar_check_stuck = ' Prevent props from getting stuck in each other',
	cvar_blacklist_damage_white = 'Damage blacklist is a white list.',
	cvar_blacklist_toolworld = 'Enable ToolgunWorld blacklist',
	cvar_blacklist_use_admin_can = 'Can admin touch ents from Use blacklist?',
	cvar_disable_damage_world = 'Disable "Damage" protection for world entities',
	cvar_restrict_e2afunction_white_bypass = 'Admins can bypass E2AFunction whitelist (spawn/use unlisted things)',
	cvar_no_tool_fail_log = 'Disable toolgun "tries" log',
	cvar_restrict_sent_white_bypass = 'Admins can bypass SENT whitelist (spawn/use unlisted things)',
	cvar_whitelist_use = 'Enable Use exclude list',
	cvar_experemental_spawn_checks = 'Experimental spawn checks (May cause problems; Replaces GetPlayer and SetPlayer functions for entities)',
	cvar_blacklist_gravgun = 'Enable Gravgun blacklist',
	cvar_spawn_checks_noaspam = 'Disable antispam check for connected entities on spawn',
	cvar_grabs_timer = 'Up for grabs enable timer in seconds',
	cvar_restrict_pickup_white = 'Pickup restrictions acts as a whitelist',
	cvar_apropkill_clampspeed_val = 'Clamp value. Change with caution!',
	cvar_advanced_spawn_checks = 'Advanced spawn checks (for WAC Aircraft, SCars, etc.)',
	cvar_antispam_delay = 'Minimum delay between entity spawning',
	cvar_apropkill_damage_vehicle = 'Prevent players from killing others using vehicles',
	cvar_whitelist_tool = 'Enable Tool exclude list',
	cvar_no_rope_world = 'Prevent players from placing ropes on the map',
	cvar_strict_spawn_checks = '[Experimental/Beta] (Very) Strict spawn checks.\nTARDIS, Combine APC and other\naddons like that would be owned by spawned player',
	cvar_echo_spawns = 'Echo spawns (server/admin console)',
	cvar_restrict_e2afunction = 'Enable E2AFunction restrictions',
	cvar_antispam_toolgun_enable = 'Enable toolgun antispam',
	cvar_stuck_ignore_frozen = 'Ignore frozen entities when doing "stuck check"',
	cvar_log_constraints = 'Should constraints spawn be logged',
	cvar_blacklist_use_white = 'Use blacklist is a white list.',
	cvar_no_rope_world_weld = 'Mean weld as rope',
	cvar_player_cant_punt = 'Disable Gravgun punting',
	cvar_blacklist_tool_white = 'Tool blacklist is a white list.',
	cvar_unfreeze_restrict = 'Restrict physgun unfreeze (Reload)',
	cvar_blacklist_use = 'Enable Use blacklist',
	cvar_enable_pickup = 'Enable "Pickups" protection',
	cvar_blacklist_physgun_player_can = 'Can players touch ents from Physgun blacklist?',
	cvar_model_whitelist = 'Model blacklist is a whitelist',
	cvar_restrict_npc_white = 'NPC restrictions acts as a whitelist',
	cvar_disconnect_freeze = 'Freeze player props on disconnect',
	cvar_log_spawns = 'Log spawns. Disables logging to files of spawns!',
	cvar_antispam_remove = 'Remove thresold',
	cvar_disable_pickup_world = 'Disable "Pickups" protection for world entities',
	cvar_no_tool_log_echo = 'Disable toolgun echo log (server/admin console messages)',
	cvar_apropkill_nopush = 'Anti-Proppush',
	cvar_prevent_prop_throw = 'Prevent players from throwing props',
	cvar_blacklist_pickup_white = 'Pickup blacklist is a white list.',
	cvar_no_tool_log = 'Disable toolgun log. Disables toolgun logging into files!',
	cvar_freeze_on_disconnect = 'Freeze player entities on disconnect',
	cvar_unfreeze_restrict_num = 'Maximum entities that are allowed to be unfreezed at once',
	
	sharing = 'Шаринг %s',
	unshare = 'Снять все галочки и применить',
	
	remove_my_ents = 'Удалить собственные энтити',
	display_customization_color = 'Настройка цвета отображения',
	display_customization = 'Настройки отображения',
	display_x = 'X координата (процент) на экране для позиции отображения владельца',
	display_y = 'Y координата (процент) на экране для позиции отображения владельца',
	
	clear_decals = 'Очистить декали',
	report_ents = 'Подсчитать и вывести статистику о энтити на карте',
	delete_ents = 'Удалить энтити игроков',
	
	freeze_all = 'Заморозить все физические объекты игроков',
	freeze_all_phys = 'Заморозить все физические объекты',
	delete_disconnected = 'Удалить энтити отключившихся игроков',
	action_unfreeze = 'Р',
	action_freeze = 'З',
	action_delete = 'У',
	fallback_select = 'Выбранный игрок: %s\nSteamID: %s',
	fallback_select_none = 'Выбранный игрок: <Нет>\n',
	owning_fallback = 'Эта страница отвечает за настройку "наследства"\nКогда Вы выходите с сервера, все ваши энтити передаются\nуказанному игроку',
	owning_fallback_r = 'Отменить выбор',
	disable_protection_for = 'Отключить защиту типа %q для %s',
	clipboard = 'Скопировать %s в буфер обмена',
	model_path = 'путь модели',
	Unblock = 'Разблокировать',
	model_blacklist = 'Черный лист Моделей',
	model_blacklist_2 = 'Черный лист Моделей. Что бы открыть меню модели, нажмите на её иконку.',
	Resizeable = 'Resizeable',
	click_reset = 'Нажмите тут чтобы сбросить размер окна',
	remove_from_blacklist = 'Удалить из чёрного листа',
	Class = 'Класс',
	Group = 'Группа',
	Groups = 'Группы',
	Limit = 'Лимит',
	Entity = 'Энтити',
	tool_mode = 'режим инструмента',
	add_tool_mode = 'Добавить режим инструмента',
	remove_tool_mode = 'Удалить режим инструмента',
	property_types_edit = 'Редактор DPP проперти',
	add_to_all_blacklists = 'Добавить это энтити во ВСЕ черные листы',
	add_to_all_blacklists_this = 'Добавить данное энтити во ВСЕ черные листы',
	remove_from_all_blacklists = 'Убрать это энтити во ВСЕ черные листы',
	remove_from_all_blacklists_this = 'Убрать данное энтити во ВСЕ черные листы',
	edit_limit = 'Добавить/Изменить лимит',
	edit_limit_a = 'Добавить/Изменить/Убрать лимит',
	edit_limit_e = 'Изменить лимит...',
	remove_limit = 'Убрать лимит',
	remove_limit_all = 'Убрать этот лимит для всех групп',
	entity_limit_note = 'ВНИМАНИЕ: Этот лист просто запрещает спавнить энтити\nс указанном классом выше этого лимита\nЭто означает, что это НЕ РАЗРЕШАЕТ спавнить группе\nнеограниченное количество энтити с данным классом.\nДля этого используйте лимиты "песочницы".',
	limit_tip = 'Неограниченно: -1\n0 - удаляет лимит с энтити\nВсе значения больше 0 являются лимитом',
	sbox_limit_note = 'ЧТО ЭТО ДЕЛАЕТ:\nЭто устанавливает значение sbox_max<...> для определённой группы.\nЧто-бы добавлять числа, Вам нужно знать, какие переменные вы хоотите изменить.\nПример: Изменения лимита пропов - "props" (sbox_maxprops).\nЗначение -1 - неограниченно, 0 - убирает уникальный лимит с группы, всё больше 0 устанавливает лимит.',
	constraints_limit_tip = 'Вы можете посмотреть типы соединений в логах DPP\nВНИМАНИЕ: Из-за того, как веревки сделаны\nDPP думает, что keyframe_rope является "vrope"\nпо причине того, что инструмент "верёвка" (и другие) создают энтити\nkeyframe_rope для визуальной верёвки.',
	sbox_max = 'sbox_max...',
	remove_from_restrict_list = 'Убрать из ограничительного листа',
	modify_r = 'Изменить...',
	add_r = 'Добавить...',
	edit_r = 'Изменить...',
	remove_friend = 'Удалить друга',
	add_friend = 'Добавить %s в список друзей',
	nick = 'Ник',
	steamid = 'SteamID',
	add_steamid = 'Добавить по SteamID',
	cvar_name = 'имя консольной переменной',
	add_entity = 'Добавить энтити',
	remove_entity = 'Убрать энтити',
	add_blacklist_looking_at = 'Добавить энтити на которое вы смотрите в черный лист',
	add_blacklist_looking_at_all = 'Добавить энтити на которое вы смотрите во ВСЕ черные листы',
	remove_blacklist_looking_at = 'Удалить энтити на которое вы смотрите из черного листа',
	remove_blacklist_looking_at_all = 'Удалить энтити на которое вы смотрите из ВСЕХ черных листов',
	is_white = 'Является белым листом',
	about_header = 'DPP был создан DBot\nДаный PP - попытка создать комбайнер который подходит для всех серверов,\nкоторые нуждаются в защите от мингов.\nАлсота помощь по русскому не помешала бы ибо у меня трояк по русскому :c',
	about_thumbup = 'Можна бесплатный лайк, позя?\nПОЗЯ?!',
	about_star = 'Можна бесплатную звезду, позя?\nПОЗЯ?!',
	about_bug = 'Можна бесплатный баг репорт, позя?\nПОЗЯ?!',
	about_issues = 'Страница ошибок DPP',
	display_customization_colors = 'Настройка цветов отображения',
	
	remove_exclude = 'Убрать из листа исключений',
	add_exclude_all = 'Добавить энтити во ВСЕ листы исключений',
	remove_exclude_all = 'Удалить энтити из ВСЕХ листов исключений',
	
	add_exclude_looking_at = 'Добавить энтити на которое вы смотрите в лист исключений',
	add_exclude_looking_at_all = 'Добавить энтити на которое вы смотрите во ВСЕ листы исключений',
	remove_exclude_looking_at = 'Убрать энтити на которое вы смотрите в лист исключений',
	remove_exclude_looking_at_all = 'Убрать энтити на которое вы смотрите во ВСЕ листы исключений',
	
	toolmode_exclude_tip = [[
Этот лист устанавливает, какие режимы инструмента
можно использовать на ЛЮБОМ энтити. К примеру, если
добавить "remover" в данный лист, то любой игрок может
удалить любое энтити других игроков с помощью инструмента.
ПОМНИТЕ: Черные листы ВСЕГДА выше всех и вся, поэтому, если
энтити будет в чёрном листе для инструмента, на нём всё равно
нельзя будет использовать режимы инструмента из данного листа.
]],

	exclude_tip = [[
Этот лист устанавливает, какие энтити не будут защищены
в режиме типа %q. К примеру, если
добавить "gmod_balloon" в данный лист, то любой игрок может
использовать данное энтити других игроков в режиме %q.
ПОМНИТЕ: Черные листы ВСЕГДА выше всех и вся, поэтому, если
энтити будет в чёрном листе, его всё равно нельзя будет использовать
в режиме %q.
]],

	property_exclude_tip = [[
Этот лист устанавливает, какие режимы свойств
можно использовать на ЛЮБОМ энтити. К примеру, если
добавить "remover" в данный лист, то любой игрок может
удалить любое энтити других игроков с помощью меню свойств.
ПОМНИТЕ: Черные листы ВСЕГДА выше всех и вся, поэтому, если
энтити будет в чёрном листе для инструментов, на нём всё равно
нельзя будет использовать свойство из данного листа.
]],

	properties_list = 'Открыть меню свойств...',
	property_class = 'Класс свойства',
	add_property = 'Добавить свойство',
	remove_property = 'Убрать свойство',
	tool_exclude = '\nПРИМЕЧАНИЕ: "remover" всё равно не может быть использован\nна энтити в данном листе',
}

DPP.RegisterPhraseList('en', en)
DPP.RegisterPhraseList('ru', ru)
