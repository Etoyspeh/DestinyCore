-- Sphere Of Insanity
delete from `spell_script_names` where ScriptName = 'spell_pri_sphere_of_insanity';
insert into `spell_script_names` values ('194230', 'spell_pri_sphere_of_insanity');

delete from `spell_script_names` where ScriptName = 'spell_arti_pri_sphere_of_insanity_summon';
insert into `spell_script_names` values ('194182', 'spell_arti_pri_sphere_of_insanity_summon');

-- Thrive in the Shadows
delete from `spell_script_names` where ScriptName = 'spell_arti_pri_thrive';
insert into `spell_script_names` values ('194024', 'spell_arti_pri_thrive');

REPLACE INTO spell_script_names VALUES (238063, 'spell_pri_leniences_reward');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (225124);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(225124, 'spell_gen_sands_of_time');

-- Warrior: Implement artifact trait Corrupted Blood of Zakajz (http://www.wowhead.com/spell=209566)
DELETE FROM `spell_script_names` WHERE `spell_id`=209567 AND `ScriptName`='spell_warr_corrupted_blood_of_zakajz';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(209567, 'spell_warr_corrupted_blood_of_zakajz');
DELETE FROM `spell_proc_event` WHERE `entry`=209566;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `spellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(209566, 1, 4, 0x00000010, 0, 0, 0, 0x00000010, 0x0010000, 0, 0, 0);

-- Priest: Implement PvP Talent Psyfiend (http://www.wowhead.com/spell=211522)
UPDATE `creature_template` SET `ScriptName` = 'npc_pri_psyfiend' WHERE `entry` = 101398;
DELETE FROM `spell_script_names` WHERE `spell_id`=199845 AND `ScriptName`='spell_pri_psyflay_area';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(199845, 'spell_pri_psyflay_area');
