///@param objective
var objective = argument0;

///@param amount
var amount = argument1;

with (objective) {
	hitPoints -= amount;
	if hitPoints <= 0 {
		instance_destroy();
	}
}
