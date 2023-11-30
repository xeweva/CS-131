#!/bin/awk -f

BEGIN {
    FS="\",\"";  
    OFS=","; 
}

NR > 1 {
   
    count[$3]++;
    total[$3] += ($6 + $7 + $8)/3;
}

END {
    
    print "Parental Level of Education, Average Test Score";

    for (edu in count) {

        avg_score = total[edu] / count[edu];
        print edu, avg_score;
        
    }

}
