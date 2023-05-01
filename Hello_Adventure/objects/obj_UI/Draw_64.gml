/// @Draw Health, Stamina

// Display health and stamina when player is not in level 1 or in the start room
#region HEALTH
var _playerHealth = global.playerHealth; // total number of hearts to draw
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFrac = frac(_playerHealth); // fraction of a heart to draw
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++){
	var _imageIndex = (i > _playerHealth);
	if (i == _playerHealth + 1){
		_imageIndex += (_playerHealthFrac > 0);
	}
	draw_sprite(spr_health, _imageIndex, 8 + ((i-1) * 16), 24);
}
#endregion

#region STAMINA
var _playerStamina = global.playerStamina; // total number of stars to draw
var _playerStaminaMax = global.playerStaminaMax;
var _playerStaminaFrac = frac(_playerStamina); // fraction of a stars to draw
_playerStamina -= _playerStaminaFrac;

for (var i = 1; i <= _playerStaminaMax; i++){
	var _imageIndex = (i > _playerStamina);
	if (i == _playerStamina + 1){
		_imageIndex += (_playerStaminaFrac > 0);
	}
	draw_sprite(spr_stamina, _imageIndex, 8 + ((i-1) * 16), 8);
}
#endregion
