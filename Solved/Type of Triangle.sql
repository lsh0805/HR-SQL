SELECT if((A + B + C) - greatest(A, B, C) > greatest(A, B, C),
        if(A = B and A = C, "Equilateral", 
          if(A = B or A = C or C = B, "Isosceles", "Scalene")), "Not A Triangle") FROM TRIANGLES;