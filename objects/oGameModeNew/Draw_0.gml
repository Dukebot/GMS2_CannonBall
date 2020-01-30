draw_set_halign(fa_left);
draw_set_valign(fa_center);


//Draw debug info:
var margin = 20;
var increment = 30;

//Game info
draw_text(margin, margin+increment*1, "Level " + string(level));
draw_text(margin, margin+increment*2, "Enemy Spawn Rate " + string(enemySpawnRate/60));
draw_text(margin, margin+increment*3, "Enemy Speed " + string(calculateEnemySpeed()));

//Player info
draw_text(margin, margin+increment*5, "Shoot Strength " + string(oPlayer.shootStrength) + " / " + string(oPlayer.shootStrengthMax));
draw_text(margin, margin+increment*6, "Charge Speed " + string(oPlayer.shootChargeSpeed));
draw_text(margin, margin+increment*7, "Projectile size " + string(oPlayer.projectileSize));
draw_text(margin, margin+increment*8, "Num Shoots " + string(oPlayer.numShoots));

draw_set_halign(fa_center);
draw_set_valign(fa_center);

//SCORE
draw_text_transformed(room_width/2, 25, "SCORE " + string(oPlayer.Score), 2, 2, 0);
