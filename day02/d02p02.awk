function getPilePower(pile1) {
    for(x=1; x <=length(pile1);x++) {
        delete pair
        split(pile1[x], pair, " ")       
        value = pair[1] + 0
        value2 = power[pair[2]]
        if (value > value2) {
            power[pair[2]] = value
        }
    }
}

function returnColorMaxAmount(color) {
    colors["red"] = 12
    colors["green"] = 13
    colors["blue"] = 14
    return colors[color]
}

BEGIN {
    FS=";";
    sum=0
    RED=12
    GREEN=13
    BLUE=14    
    }

{
    power["red"] = 1
    power["green"] = 1
    power["blue"] = 1
    gameNumber = 0
    ret = 1
    for(i=1; i<=NF; i++) {
        if (i == 1) {
            delete round1
            split($i, round1, ":")
            game = round1[1]
            round = round1[2]
            delete pile
            split(round, pile, ",")
            getPilePower(pile)
        }
        else {
            delete pile
            split($i, pile, ",")
            getPilePower(pile)
        }
    }
    gameNumber = power["red"] * power["green"] * power["blue"]
    #print gameNumber
    sum += gameNumber

}

END {print sum}
