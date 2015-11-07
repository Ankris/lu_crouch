crouch_pos <- array(GetMaxPlayers(), null);

function onScriptLoad() { RegisterRemoteFunc("onPlayerCrouch"); }

function onPlayerUpdate(player) {
	local i = player.ID;
	if (crouch_pos[i] != null) {
		if (GetDistance(crouch_pos[i], player.Pos) > 2) crouch_pos[i] = null;
	}
}

function onPlayerCrouch(player) {
	local i = player.ID;
	if (!player.Spawned || player.Vehicle) return false;

	if (crouch_pos[i] == null) {
		crouch_pos[i] = player.Pos;

		player.SetAnim(163);
	}
}