function onScriptLoad() { 
	BindKey('V', BINDTYPE_UP, "Action"); 
}

function Action() {
	CallServerFunc("Crouch/crouch_s.nut", "onPlayerCrouch", FindLocalPlayer());
}