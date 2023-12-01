BEGIN { FS = "[^0-9]+"; sum = 0} 

{ 
p = ""; for(i=1; i<=NF; ++i) if ($i != "") {p = p $i};
split(p, a, ""); d1 = a[1]; d2 = a[length(a)];
d = d1 d2; sum += (d + 0)
}

END { print sum }
