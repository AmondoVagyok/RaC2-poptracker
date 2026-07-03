function can_improved_jump()
  return has("heli-pack") or has("thruster-pack")
end

function get_glitch_logic_difficulty()
    return Tracker:FindObjectForCode("glitch_logic_difficulty").CurrentStage
end

function can_pack_switch()
    return has("heli-pack") and has("thruster-pack")
end

function can_clip()
    return has("decoyglove") or has("miniturretglove")
end

function oozla_end_store_cutscene()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") then
        return true
    end
    if gld >= 2 then
        return true
    end
    return false
end

function oozla_tractor_puzzle_pb()
    local gld = get_glitch_logic_difficulty()
    if has("tractorbeam") then
        return true
    end
    if gld >= 1 then
        return true
    end
    return false
end

function oozla_swamp_ruins_pb()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") then
        return true
    end
    if gld >= 2 then
        return true
    end
    return false
end

function oozla_swamp_monster_ii()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and has("gravityboots") then
        return true
    end
    if gld >= 1 then
        return has("gravityboots")
    end
    return false
end

function maktar_photo_booth()
    local gld = get_glitch_logic_difficulty()
    if has("electrolyzer") then
        return true
    end
    if gld >= 2 then
        return has("chargeboots") or can_pack_switch()
    end
    return false
end

function maktar_deactivate_jamming_array()
    local gld = get_glitch_logic_difficulty()
    if has("tractorbeam") then
        return true
    end
    if gld >= 2 then
        return has("chargeboots")
    end
    return false
end

function maktar_jamming_array_pb()
    local gld = get_glitch_logic_difficulty()
    if has("tractorbeam") then
        return true
    end
    if gld >= 2 then
        return has("chargeboots")
    end
    return false
end

function endako_rescue_clank()
    return has("electrolyzer")
end

function endako_crane_pb()
    return has("electrolyzer")
end

function endako_crane_nt()
    local gld = get_glitch_logic_difficulty()
    if has("electrolyzer") and has("infiltrator") then
        return true
    end
    if gld >= 2 then
        return can_clip()
    end
    return false
end

function barlow_inventor()
    return has("swingshot")
end

function barlow_hoverbike_race()
    local gld = get_glitch_logic_difficulty()
    if can_improved_jump() and has("electrolyzer") then
        return true
    end
    if gld >= 2 then
        return has("electrolyzer")
    end
    return false
end

function barlow_hound_cave_pb()
    return has("swingshot")
end

function notak_top_pier_telescreen()
    local gld = get_glitch_logic_difficulty()
    if can_improved_jump() and has("thermanator") then
        return true
    end
    if gld >= 1 then
        return has("thermanator")
    end
    return false
end

function notak_worker_bots()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") and has("thermanator") then
        return true
    end
    if gld >= 2 then
        return can_clip() and has("thermanator")
    end
    return false
end

function notak_timed_dynamo()
    local gld = get_glitch_logic_difficulty()
    if has("thermanator") and can_improved_jump() and has("dynamo") then
        return true
    end
    if gld >= 2 and (can_clip() and has("thermanator")) then
        return true
    end
    if gld >= 1 and (has("dynamo") and has("thermanator")) then
        return true
    end
    return false
end

function siberius_defeat_thief()
    return has("swingshot")
end

function siberius_flamebot_ledge_pb()
    local gld = get_glitch_logic_difficulty()
    if has("tractorbeam") and can_improved_jump() then
        return true
    end
    if gld >= 1 then
        return has("tractorbeam") or can_improved_jump()
    end
    return false
end

function siberius_fenced_area_pb()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") then
        return true
    end
    if gld >= 2 then
        return has("chargeboots") or can_clip()
    end
    return false
end

function tabora_meet_angela()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") and has("swingshot") then
        return true
    end
    if gld >= 3 and has("swingshot") then
        return true
    end
    if gld >= 1 and has("chargeboots") then
        return true
    end
    return false
end

function tabora_underground_mines_end()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") and has("swingshot") and has("thermanator") then
        return true
    end
    if gld >= 3 and (has("swingshot") and has("thermanator")) then
        return true
    end
    if gld >= 1 then
        if has("chargeboots") and has("thermanator") then
            return true
        end
        if has("chargeboots") and has("heli-pack") then
            return true
        end
        if has("swingshot") and has("heli-pack") then
            return true
        end
    end
    return false
end

function tabora_underground_mines_pb()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") and has("swingshot") and has("thermanator") then
        return true
    end
    if gld >= 3 and (has("swingshot") and has("thermanator")) then
        return true
    end
    if gld >= 1 then
        if has("heli-pack") and has("swingshot") then
            return true
        end
        if has("chargeboots") and has("thermanator") then
            return true
        end
    end
    return false
end

function tabora_canyon_glide_pb()
    local gld = get_glitch_logic_difficulty()
    if has("heli-pack") and has("swingshot") and has("thermanator") and has("glider") then
        return true
    end
    if gld >= 3 and (has("swingshot") and has("thermanator") and has("glider")) then
        return true
    end
    if gld >= 1 then
        if has("chargeboots") and has("thermanator") and has("glider") then
            return true
        end
        if has("chargeboots") and has("heli-pack") and has("glider") then
            return true
        end
        if has("swingshot") and has("heli-pack") and has("glider") then
            return true
        end
    end
    return false
end

function tabora_northeast_desert_pb()
    return tabora_meet_angela()
end

function tabora_canyon_glide_pillar_nt()
    local gld = get_glitch_logic_difficulty()
    if tabora_canyon_glide_pb() then
        return true
    end
    if gld >= 1 then
        return tabora_meet_angela()
    end
    return false
end

function dobbo_defeat_thug_leader()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and can_improved_jump() and has("dynamo") then
        return true
    end
    if gld >= 2 then
        return has("swingshot") and (has("chargeboots") or can_pack_switch())
    end
    return false
end

function dobbo_facility_terminal()
    return has("swingshot") and has("glider") and has("dynamo") and has("electrolyzer")
end

function dobbo_spiderbot_room_pb()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and has("swingshot") and has("spiderbot") then
        return true
    end
    if gld >= 2 then
        if has("spiderbot") or can_clip() then
            if has("swingshot") and has("dynamo") then
                return true
            end
            if has("swingshot") and has("chargeboots") then
                return true
            end
            if can_pack_switch() then
                return true
            end
        end
    end
    return false
end

function dobbo_facility_glide_pb()
    return has("swingshot") and has("glider") and has("dynamo")
end

function dobbo_facility_glide_nt()
    return has("swingshot") and has("glider") and has("dynamo")
end

function joba_hoverbike_race()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") then
        return true
    end
    if gld >= 2 then
        return has("chargeboots")
    end
    return false
end

function joba_shady_salesman()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and can_improved_jump() then
        return true
    end
    if gld >= 1 then
        return has("dynamo")
    end
    return false
end

function joba_arena_battle()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and can_improved_jump() and has("levitator") then
        return true
    end
    if gld >= 1 then
        return has("dynamo") and has("levitator")
    end
    return false
end

function joba_hidden_cliff_pb()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and has("swingshot") then
        return true
    end
    if gld >= 2 then
        return has("dynamo") and has("chargeboots")
    end
    return false
end

function joba_levitator_tower_pb()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and can_improved_jump() and has("levitator") then
        return true
    end
    if gld >= 1 then
        return has("dynamo") and has("levitator")
    end
    return false
end

function joba_timed_dynamo_nt()
    return has("dynamo")
end

function todano_search_rocket_silo()
    local gld = get_glitch_logic_difficulty()
    if has("electrolyzer") and has("infiltrator") and can_improved_jump() then
        return true
    end
    if gld >= 2 and (has("electrolyzer") and can_clip()) then
        return true
    end
    if gld >= 1 and (has("electrolyzer") and has("infiltrator")) then
        return true
    end
    return false
end

function todano_stuart_zurgo_trade()
    return has("electrolyzer") and has("tractorbeam") and has("qwarkstatuette")
end

function todano_facility_interior()
    return has("electrolyzer") and has("tractorbeam")
end

function todano_near_stuart_zurgo_pb()
    return has("electrolyzer") and has("tractorbeam")
end

function todano_spiderbot_conveyor_pb()
    local gld = get_glitch_logic_difficulty()
    if has("electrolyzer") and has("tractorbeam") and can_improved_jump() and has("spiderbot") then
        return true
    end
    if gld >= 3 and (has("electrolyzer") and can_clip()) then
        return true
    end
    if gld >= 2 and (has("electrolyzer") and has("tractorbeam") and has("spiderbot")) then
        return true
    end
    return false
end

function todano_rocket_silo_nt()
    return has("electrolyzer") and has("infiltrator")
end

function boldan_find_fizzwidget()
    return has("levitator") and has("swingshot") and has("gravityboots")
end

function boldan_spiderbot_alley_pb()
    return has("levitator") and has("spiderbot")
end

function boldan_floating_platform()
    return has("levitator") and has("gravityboots")
end

function boldan_fountain_nt()
    return has("levitator")
end

function aranos_control_room()
    return has("gravityboots") and has("infiltrator") and has("levitator")
end

function aranos_plumber()
    return has("gravityboots") and has("levitator")
end

function aranos_under_ship_pb()
    return has("gravityboots") and has("heli-pack")
end

function aranos_omniwrench_12000()
    return has("gravityboots")
end

function snivelak_rescue_angela()
    return has("swingshot") and has("grindboots") and has("gravityboots") and has("dynamo")
end

function snivelak_dynamo_pb()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and has("grindboots") and has("gravityboots") and has("dynamo") and has("heli-pack") then
        return true
    end
    if gld >= 1 then
        return has("swingshot") and has("grindboots") and has("gravityboots") and has("dynamo") and has("chargeboots")
    end
    return false
end

function snivelak_swingshot_tower_nt()
    return has("swingshot") and has("heli-pack")
end

function smolg_balloon_transmission()
    local gld = get_glitch_logic_difficulty()
    if can_improved_jump() and has("dynamo") and has("electrolyzer") then
        return true
    end
    if gld >= 1 then
        return has("dynamo") and has("electrolyzer")
    end
    return false
end

function smolg_distribution_facility_end()
    local gld = get_glitch_logic_difficulty()
    if can_improved_jump() and has("dynamo") and has("electrolyzer") and has("grindboots") and has("infiltrator") then
        return true
    end
    if gld >= 2 and (has("dynamo") and has("electrolyzer") and has("infiltrator")) then
        return true
    end
    if gld >= 1 and (has("dynamo") and has("electrolyzer") and has("grindboots") and has("infiltrator")) then
        return true
    end
    return false
end

function smolg_mutant_crab()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and has("levitator") then
        return true
    end
    if gld >= 2 then
        return has("levitator") and has("chargeboots")
    end
    return false
end

function smolg_floating_platform_pb()
    return smolg_mutant_crab()
end

function smolg_warehouse_pb()
    local gld = get_glitch_logic_difficulty()
    if has("dynamo") and can_improved_jump() then
        return true
    end
    if gld >= 1 then
        return has("dynamo")
    end
    return false
end

function damosel_hypnotist_pb()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and can_improved_jump() and has("thermanator") and has("hpfull") then
        return true
    end
    if gld >= 2 and has("hpfull") then
        return has("chargeboots") or (has("swingshot") and has("thermanator"))
    end
    return false
end

function damosel_train_rails()
    return has("grindboots")
end

function damosel_frozen_mountain_pb()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and can_improved_jump() and has("thermanator") and has("grindboots") then
        return true
    end
    if gld >= 2 and (has("chargeboots") and has("grindboots")) then
        return true
    end
    if gld >= 1 and (has("swingshot") and has("thermanator") and has("grindboots")) then
        return true
    end
    return false
end

function damosel_pyramid_pb()
    local gld = get_glitch_logic_difficulty()
    if has("swingshot") and can_improved_jump() and has("hypnomatic") then
        return true
    end
    if gld >= 2 and has("hypnomatic") then
        if has("chargeboots") or has("swingshot") then
            return true
        end
    end
    if gld >= 1 and (has("swingshot") and has("hypnomatic")) then
        return true
    end
    return false
end

function grelbin_find_angela()
    return has("hypnomatic")
end

function grelbin_mystic_more_moonstones()
    return has("glider") and has("infiltrator")
end

function grelbin_ice_plains_pb()
    return grelbin_mystic_more_moonstones()
end

function grelbin_underwater_tunnel_pb()
    return has("hypnomatic")
end

function grelbin_yeti_cave_pb()
    return has("glider") and has("infiltrator") and has("hypnomatic")
end

function yeedil_bridge_grindrail_pb()
    return has("grindboots")
end

function yeedil_defeat_mutated_protopet()
    local gld = get_glitch_logic_difficulty()
    if has("hypnomatic") and has("swingshot") and has("infiltrator") and has("dynamo") and can_improved_jump() and has("electrolyzer") then
        return true
    end
    if gld >= 3 and (has("chargeboots") and has("hoverbombgun") and can_clip() and has("electrolyzer")) then
        return true
    end
    if gld >= 2 and (has("hypnomatic") and has("swingshot") and can_clip() and has("dynamo") and has("electrolyzer")) then
        return true
    end
    if gld >= 1 and (has("hypnomatic") and has("swingshot") and has("infiltrator") and has("dynamo") and has("electrolyzer")) then
        return true
    end
    return false
end

function yeedil_tractor_pillar_pb()
    local gld = get_glitch_logic_difficulty()
    if has("hypnomatic") and has("swingshot") and has("infiltrator") and has("dynamo")
       and can_improved_jump() and has("electrolyzer") and has("tractorbeam") and has("grindboots") then
        return true
    end
    if gld >= 3 and (has("chargeboots") and has("hoverbombgun") and can_clip() and has("electrolyzer")
       and has("tractorbeam") and has("grindboots")) then
        return true
    end
    if gld >= 2 and (has("hypnomatic") and has("swingshot") and can_clip() and has("dynamo") and has("electrolyzer")
        and has("tractorbeam") and has("grindboots")) then
        return true
    end
    if gld >= 1 and (has("hypnomatic") and has("swingshot") and has("infiltrator") and has("dynamo") and has("electrolyzer")
       and has("tractorbeam") and has("grindboots")) then
        return true
    end
    return false
end