$r = pip list -o
If ( $r -eq $null ) {
	echo("All packages are up to date.");
}
Else {
	$array = @();
	foreach( $l in $r[2..$r.Length] ){
		$array += (-split $l)[0];
	}
	pip install -U $array
	echo ("Updated " + $($array -join ", ") + ".");
}