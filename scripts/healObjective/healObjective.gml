///@param objective
var objective = argument0;

///@param amount
var amount = argument1;

with (objective) {
	hitPoints += amount;
	hitPoints = min(hitPoints, maxHitPoints);
}