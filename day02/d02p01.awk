function isPilePossible(pile1) {
    for(x=1; x <=length(pile1);x++) {
        delete pair
        split(pile1[x], pair, " ")
        max = returnColorMaxAmount(pair[2])
        value = pair[1] + 0
        if (value > max) {
            return 0
        }
    }
    return 1
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
            ret = isPilePossible(pile)
        }
        else {
            delete pile
            split($i, pile, ",")
            ret = isPilePossible(pile)
        }
        if(ret == 0) {
            break
        }
    }
    if(ret != 0) {
        delete pair
        split(game, pair, " ")
        gameNumber = pair[2] + 0
        sum += gameNumber
    }
}

END {print sum}
