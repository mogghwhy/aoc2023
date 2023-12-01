function findContiguous(nums) {

    linelen=length($0)
    start = 1
    while ( start < linelen) {
        #print "start1:"start
        p = findInPosition(start, nums)
        if ( p == -1 ) {
            start++
        }
        else {
            start = p
        }
        linelen=length($0)
        #print "p is:"p
        #print "start2:"start
        #print "----------------------------------"
        FS = "[^0-9]+"
    }
}

function findInPosition(start2, nums) {
    for (key in nums) {      
        number = nums[key]        
        len=length(number)
        value=substr($0, start2 , len )
        if( value == number ) {
            sub(number, key)
            #print "found number:" number
            #return start2 + len
            return start2++
        }
        else {
            continue
        }
    }
	return -1 
}

BEGIN {

#    numbers["1"] = "one"
#    numbers["2"] = "two"
#    numbers["3"] = "three"
#    numbers["4"] = "four"
#    numbers["5"] = "five"
#    numbers["6"] = "six"
#    numbers["7"] = "seven"
#    numbers["8"] = "eight"
#    numbers["9"] = "nine"
    numbers["on1e"] = "one"
    numbers["tw2o"] = "two"
    numbers["thr3e"] = "three"
    numbers["fo4ur"] = "four"
    numbers["fi5ve"] = "five"
    numbers["si6x"] = "six"
    numbers["sev7en"] = "seven"
    numbers["ei8ght"] = "eight"
    numbers["ni9ne"] = "nine"
    sum = 0
}

{
    #start=0
    #print $0
    findContiguous(numbers)
    #print $0
    #print "----------------------------------"

    p = ""; for(i=1; i<=NF; ++i) if ($i != "") {p = p $i};
    split(p, a, "");
    rlen = length(a)
    if( rlen > 0 ) {
        if ( rlen == 1 ) {
            d1 = a[1];
            d = d1 d1
			#print "p1: "d1", p2: "d2
        }
        else {
            d1 = a[1]; d2 = a[length(a)];
            d = d1 d2;            
			#print "p1: "d1", p2: "d2
        }
    }    

   sum += (d + 0)
   #print d   
   #print "sum: "sum" d:"d
   #print "----------------------------------"
}

END { print sum }
