// =============================
// VScript: dodgeball/init.nut
// =============================

function OnPostSpawn()
{
    printl("[DODGEBALL] VScript loaded successfully.");

    // ✅ Kill CTF-related entities (for maps like 2fort)
    EntFire("item_teamflag*", "Kill");
    EntFire("func_capturezone*", "Kill");

    // ✅ Optional: Remove HUD icons for CTF
    EntFire("team_control_point*", "Kill");
    EntFire("game_round_win*", "Kill");

    // ✅ Spawn your custom controller entity
    // local controller = Entities.CreateByClassname("point_dodgeball_controller");
    // controller.SetOrigin(Vector(0, 0, 128)); // Spawn in a neutral position
    // controller.Spawn();
    // controller.Activate();
    // EntFireByHandle(controller, "StartGame", "", 0.1, null, null);

    // ✅ Optional: Strip all players' weapons
    
    for (local i = 1; i <= MaxClients(); i++)
    {
        local player = PlayerInstanceFromIndex(i);
        if (player != null)
        {
            player.StripWeapons();
        }
    }
    
}