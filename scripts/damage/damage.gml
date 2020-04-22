///@param object
var object = argument0;

///@param amount
var amount = argument1;

with object {
	hitPoints -= amount;
	if hitPoints <= 0 {
		instance_destroy();	
	}
}