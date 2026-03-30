var _xx = x + global.Dist;
var _idd = idd;

with ( obj_Item ) {
	if ( x == _xx && idd < _idd ) {
		var temp = x;
		
		x = other.x;
		other.x = temp;

	}
}