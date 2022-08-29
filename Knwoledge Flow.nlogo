extensions [matrix]

breed[Normal Normals]

globals[

  r
  u
  N1
  N2
  N3
  N4
  N5
  N6
  N7
  t
  g
  h


  Cor
  Cnt

  I0
  I1
  I3

  FGH1
  FGH2
  FGH3
  FGH4
  FGH5
  FGH6
  FGH7
  FGH8
  FGH9
  FGH10
  FGH11
  FGH12
  FGH13
  FGH14
  FGH15
  FGH16
  FGH17
  FGH18


  R-M


  Year
  N-Sort

  counter
  I2
  I6
  I7
  I8
  I9
  i10


  I20
  I60
  I70
  I80
  I90
  Total-1
  Total-2
  Total-3
  Total-4
  Total-5
  Total-6
  Total-7
  Total-8
  Total-9

   year+
   flag

   Step-1
   Step-2
   Step-3
   Step-4
   Step-5

   Flag-1

  z
  d
  S1
  S2
  h1
  h2
  Ss1
  Ss2
  Hh1
  Hh2
  result
  W1
  q1
  c1
   W2
  q2
  c2
   W3
  q3
  c3
   W4
  q4
  c4
   W5
  q5
  c5
   W6
  q6
  c6
   W7
  q7
  c7
   W8
  q8
  c8

  On_duty_Days
  On_duty_H
  myType

]


turtles-own
[

T-Art
T-Clus
T-Citation
T-Index-Art
N-Degree
T-Beiniyat
T-Connection
T-Degree




]
to setup-NTW
  clear-all


  set-patch-size 6
  set I1 0
  set Cnt 0
  set r 0
  set u 0
  set h false
  Set Year 1398
  set year+ 0
  set flag true
  set Flag-1 false
  ask patches [set pcolor Back-Ground]
  set-default-shape turtles "Person"

  make-node nobody
  make-node turtle 0

  Set-Cor
    ;set FGH1 fill-matrix 2 348   task [random 0]

    ;set FGH2 fill-matrix 2 498   task [random 0]

    ;set FGH3 fill-matrix 2 548   task [random 0]

    ;set FGH4 fill-matrix 2 306   task [random 0]

    ;set FGH5 fill-matrix 2 468   task [random 0]

    ;set FGH6 fill-matrix 2 481   task [random 0]

    ;set FGH7 fill-matrix 2 487   task [random 0]

    ;set FGH8 fill-matrix 2 455   task [random 0]

    ;set FGH9 fill-matrix 2 223   task [random 0]

    ;set FGH10 fill-matrix 2 503   task [random 0]

    ;set FGH11 fill-matrix 2 469   task [random 0]

    ;set FGH12 fill-matrix 2 774   task [random 0]

    ;set FGH13 fill-matrix 2 629   task [random 0]

    ;set FGH14 fill-matrix 2 213   task [random 0]

    ;set FGH15 fill-matrix 2 574   task [random 0]

    ;set FGH16 fill-matrix 2 483   task [random 0]

    ;set FGH17 fill-matrix 2    task [random 0]

    ;set FGH18 fill-matrix 2    task [random 0]


  set FGH1 matrix:make-constant Cnt 348 0

  set FGH2 matrix:make-constant Cnt 498 0

  set FGH3 matrix:make-constant Cnt 548 0

  set FGH4 matrix:make-constant Cnt 306 0

  set FGH5 matrix:make-constant Cnt 468 0

  set FGH6 matrix:make-constant Cnt 481 0

  set FGH7 matrix:make-constant Cnt 487 0

  set FGH8 matrix:make-constant Cnt 455 0

  set FGH9 matrix:make-constant Cnt 223 0

  set FGH10 matrix:make-constant Cnt 503 0

  set FGH11 matrix:make-constant Cnt 469 0

  set FGH12 matrix:make-constant Cnt 774 0

  set FGH13 matrix:make-constant Cnt 629 0

  set FGH14 matrix:make-constant Cnt 213 0

  set FGH15 matrix:make-constant Cnt 574 0

  set FGH16 matrix:make-constant Cnt 483 0

  set FGH17 matrix:make-constant Cnt 503 0

  set FGH18 matrix:make-constant Cnt 568 0
  reset-ticks
end

To Set-Cor


  file-open "Data-Base.txt"
  while[not file-at-end?] [
    let line file-read
      set Cnt Cnt + 1
    ]
  file-close

  set Cor matrix:make-constant Cnt 9 0


  file-open "Data-Base.txt"

  while[not file-at-end?] [

  let line file-read

  if I1 < Cnt [

    matrix:set Cor I1 0 item 0 line
    matrix:set Cor I1 1 item 1 line
    matrix:set Cor I1 2 item 2 line
    matrix:set Cor I1 3 item 3 line
    matrix:set Cor I1 4 item 4 line
    matrix:set Cor I1 5 item 5 line
    matrix:set Cor I1 6 item 6 line
    matrix:set Cor I1 7 item 7 line
    matrix:set Cor I1 8 item 8 line



          ]

    set I1 I1 + 1


  ]
  file-close




end


to make-node [old-node]
  crt 1
  [
    set color red
    if old-node != nobody
      [ create-link-with old-node [ set color green ]

        move-to old-node
        fd 8
      ]



  ]
end

to Sort-Ntw

   while[count turtles < Cnt]
    [

  ask links [ set color gray ]
  make-node find-partner

  tick
    ]
    if r = 0 [

      set r r + 1
     ask turtles [set breed normal

       ;set Hiber? false
     ;  set ignorant? false
      ; set spreader? false
      ; set stifler? false
      set color black

      ]


    ]
  if Year < 1404 []


    Sorting
    Set-Ping

  while [I3 < Cnt]
  [

    Let N matrix:get Cor I3 1
    ask turtle I3 [set T-Citation N]
    set Total-1 Total-1 + N

    set N matrix:get Cor I3 2
    ask turtle I3 [set T-Art N]
    set Total-2 Total-2 + N

    set N matrix:get Cor I3 3
    ask turtle I3 [set T-Index-Art N]
    set Total-3 Total-3 + N

    set N matrix:get Cor I3 4
    ask turtle I3 [set T-Beiniyat N]
    set Total-4 Total-4 + N


    Set N matrix:get Cor I3 5
    ask turtle I3 [set T-Clus N]
    set Total-5 Total-5 + N

    Set N matrix:get Cor I3 6
    ask turtle I3 [set T-Connection N]
    set Total-6 Total-6 + N

    Set N matrix:get Cor I3 7
    ask turtle I3 [set T-Degree N]
    set Total-7 Total-7 + N






    set I3 I3 + 1

  ]





  set N-Sort  N-Sort + 1

  if N-Sort > Max-Sort [
    stop
  ]

end


to Set-Ping


  if Select = "Articles" [

  set Step-1 333
  set Step-2 828.4
  set Step-3 9
  set Step-4 16765
  set Step-5 226.8

  while [I0 < Cnt]
  [
    Let N matrix:get Cor I0 2
    ask turtle I0 [
      ifelse N * 30 / 100 > 3 [set Size 3 set color lime + N]
      [Set Size N * 30 / 100 set color lime + N]
    set I0 I0 + 1
  ]

  ]

  ]

   if Select = "Betweenness" [
       set Step-1 300
       set Step-2 800.4
       set Step-3 8.5
       set Step-4 14765
       set Step-5 206.8

    while [I0 < Cnt]
  [
    Let N matrix:get Cor I0 4
    ask turtle I0 [
      ifelse N * 30 / 100 > 3 [set Size 3 set color blue + N]
      [Set Size N * 30 / 100 set color lime + N]
    set I0 I0 + 1
  ]

  ]

  ]

  if Select = "Clus" [


       set Step-1 253
       set Step-2 780.4
       set Step-3 8.7
       set Step-4 13765
       set Step-5 200.8

    while [I0 < Cnt]
  [
    Let N matrix:get Cor I0 5
    ask turtle I0 [
      ifelse N * 30 / 100 > 3 [set Size 3 set color red + N]
      [Set Size N * 30 / 100 set color lime + N]
    set I0 I0 + 1
  ]

  ]

  ]
;;;;;;;;;;;;;;;;;;;;


  if Select = "Degree" [
       set Step-1 259
       set Step-2 728.4
       set Step-3 8
       set Step-4 11765
       set Step-5 190.8
    while [I0 < Cnt]
  [
    Let N matrix:get Cor I0 6
    ask turtle I0 [
      ifelse N * 30 / 100 > 3 [set Size 3 set color red + N]
      [Set Size N * 30 / 100 set color lime + N]
    set I0 I0 + 1
  ]

  ]

  ]



  if Select = "Conection" [

       set Step-1 3
       set Step-2 8
       set Step-3 0.9
       set Step-4 16
       set Step-5 2

    while [I0 < Cnt]
  [
    Let N matrix:get Cor I0 7
    ask turtle I0 [
      ifelse N * 30 / 100 > 3 [set Size 3 set color red + N]
      [Set Size N * 99 / 100 + 1 set color lime + N]
    set I0 I0 + 1
  ]

  ]

  ]



end


to Sorting

  repeat 3 [

    let factor sqrt count turtles

    layout-spring turtles links (1 / factor) (7 / factor) (1 / factor)
    display  ;; for smooth animation
  ]

  let x-offset max [xcor] of turtles + min [xcor] of turtles
  let y-offset max [ycor] of turtles + min [ycor] of turtles

  set x-offset limit-magnitude x-offset 0.1
  set y-offset limit-magnitude y-offset 0.1
  ask turtles [ setxy (xcor - x-offset / 2) (ycor - y-offset / 2) ]
end


to-report find-partner
  report [one-of both-ends] of one-of links
end

to-report limit-magnitude [number limit]
  if number > limit [ report limit ]
  if number < (- limit) [ report (- limit) ]
  report number
end


to-report fill-matrix [n m generator]
  report matrix:from-row-list n-values n [n-values m [runresult generator]]
end

to-report random-in-range [low high]


  report low + random (high - low + 1)
end




to Go


  SET counter counter + 1
   if counter > 1000000 [

    ;ask turtles [set color red]

    Calculate
    Plt
    Set Year+ Year+ + 1
    Set Year Year + 1
    SET counter 0
    set I2 0
    Set I6 0
    Set I7 0
    Set I8 0
    Set I9 0
  ]


  if Year = 1428 [if Export-File [ Fit ] Stop]
  if Year+ = 30 [if Export-File  [ Fit ]     ]
end


to Calculate

  while [I2 < random-in-range Max-Performance-Article Step-1] [
  let Change random-in-range 0 (Cnt - 1)




  if random  100 < Article-Range [

 Ask turtle Change [set T-Art T-Art + 1

       if flag = true [
       Let N matrix:get Cor Change 2
       ask turtle Change [
      if T-Art * 30 / 100 > 3 [set color lime + T-Art]
          ]

      ]
  ]
    ]
   set I2 I2 + 1
  ]




  if random  100 < Article-Range [


  set Total-2 Total-2 + random-in-range 100 (Total-2 / 10)
  ]





 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  while [I6 < random-in-range Max-Performance-Connection Step-2] [
  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Connection-Range [

 Ask turtle Change [set T-Connection T-Connection + 1
       if flag = false [
       Let N matrix:get Cor Change 6
       ask turtle Change [
       if T-Connection * 30 / 100 > 3 [set color lime + T-Connection]
          ]
      ]
      ]
  ]
   set I6 I6 + 1
  ]




  if random  100 < Connection-Range [


  set Total-6 Total-6 + random-in-range 100 (Total-6 / 10)
  ]

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I7 < random-in-range Max-Performance-Degree Step-3] [
  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Degree-Range [

 Ask turtle Change [set T-Degree T-Degree + 0.9
      if flag = false [
       Let N matrix:get Cor Change 7
       ask turtle Change [
       if T-Degree * 30 / 100 > 3 [set color lime + T-Degree]
          ]
      ]
      ]
  ]
   set I7 I7 + 1
  ]




  if random  100 < Degree-Range [


  set Total-7 Total-7 + random-in-range 0.5 (Total-7 / 10)
  ]


   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I8 < random-in-range Max-Performance-Beiniyat Step-4] [

  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Beiniyat-Range [

 Ask turtle Change [set T-Beiniyat T-Beiniyat + 1
      if flag = false [
       Let N matrix:get Cor Change 4
       ask turtle Change [
       if T-Beiniyat * 30 / 100 > 3 [set color lime + T-Beiniyat]
          ]
      ]
      ]
  ]
   set I8 I8 + 1
  ]




  if random  100 < Beiniyat-Range [


  set Total-4 Total-4 + random-in-range 0.5 (Total-4 / 10)
  ]






   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I9 < random-in-range Max-Performance-Clus Step-5] [

  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Clus-Range [

 Ask turtle Change [set T-Clus T-Clus + 1
      if flag = false [
       Let N matrix:get Cor Change 5
       ask turtle Change [
       if T-Clus * 30 / 100 > 3 [set color lime + T-Clus]
          ]
      ]
      ]
  ]
   set I9 I9 + 1
  ]




  if random  100 < Clus-Range [


  set Total-5 Total-5 + random-in-range 0.5 (Total-5 / 10)
  ]





if Flag-1 = true [


  while [I20 < random-in-range Max-Performance-Article Step-1] [
  let Change random-in-range 0 (Cnt - 1)




  if random  100 < Article-Range [

 Ask turtle Change [set T-Art T-Art + 1

       if flag = true [
       Let N matrix:get Cor Change 2
       ask turtle Change [
      if T-Art * 30 / 100 > 3 [set color lime + T-Art]
          ]

      ]
  ]
    ]
   set I20 I20 + 1
  ]




  if random  100 < Article-Range [


  set Total-2 Total-2 + random-in-range 100 (Total-2 / 10)
  ]





 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  while [I60 < random-in-range Max-Performance-Connection Step-2] [
  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Connection-Range [

 Ask turtle Change [set T-Connection T-Connection + 1
       if flag = false [
       Let N matrix:get Cor Change 6
       ask turtle Change [
       if T-Connection * 30 / 100 > 3 [set color lime + T-Connection]
          ]
      ]
      ]
  ]
   set I60 I60 + 1
  ]




  if random  100 < Connection-Range [


  set Total-6 Total-6 + random-in-range 100 (Total-6 / 10)
  ]

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I70 < random-in-range Max-Performance-Degree Step-3] [
  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Degree-Range [

 Ask turtle Change [set T-Degree T-Degree + 0.9
      if flag = false [
       Let N matrix:get Cor Change 7
       ask turtle Change [
       if T-Degree * 30 / 100 > 3 [set color lime + T-Degree]
          ]
      ]
      ]
  ]
   set I70 I70 + 1
  ]




  if random  100 < Degree-Range [


  set Total-7 Total-7 + random-in-range 0.5 (Total-7 / 10)
  ]


   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I80 < random-in-range Max-Performance-Beiniyat Step-4] [

  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Beiniyat-Range [

 Ask turtle Change [set T-Beiniyat T-Beiniyat + 1
      if flag = false [
       Let N matrix:get Cor Change 4
       ask turtle Change [
       if T-Beiniyat * 30 / 100 > 3 [set color lime + T-Beiniyat]
          ]
      ]
      ]
  ]
   set I80 I80 + 1
  ]




  if random  100 < Beiniyat-Range [


  set Total-4 Total-4 + random-in-range 0.5 (Total-4 / 10)
  ]






   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   while [I90 < random-in-range Max-Performance-Clus Step-5] [

  let Change random-in-range 0 (Cnt - 1)


  if random  100 < Clus-Range [

 Ask turtle Change [set T-Clus T-Clus + 1
      if flag = false [
       Let N matrix:get Cor Change 5
       ask turtle Change [
       if T-Clus * 30 / 100 > 3 [set color lime + T-Clus]
          ]
      ]
      ]
  ]
   set I90 I90 + 1
  ]




  if random  100 < Clus-Range [


  set Total-5 Total-5 + random-in-range 0.5 (Total-5 / 10)
  ]




  ]




     while [T <= 24]

     [


        if z =  False [

          Set S1 30  Set S2 40
          Set H1 10  Set H2 33


         ifelse D = 1 and t < 4 [

             Set s1 33  Set S2 33
             Set h1 33  Set H2 33

          ][

          ]


         ;;------------------------------------------------------


              Set Ss1 30  Set sS2 33
              Set Hh1 25  Set Hh2 27


           ifelse D = 1 and t < 4 [

             Set Ss1 33  Set sS2 33
             Set Hh1 33  Set Hh2 33

          ][

          ]






          ;;-----------------------------------------------------
          ]



        if z =  true [

          if T <= 6 [
          Set S1 60  Set S2 80
          Set H1 1  Set H2 5
          ]



          if T > 6 And T <= 12 [
          Set S1 0  Set S2 10
          Set H1 10  Set H2 20
          ]



          if T > 12 And T <= 18 [
          Set S1 0  Set S2 10
          Set H1 10  Set H2 25
          ]


          if T > 18 And T <= 23 [
          Set S1 30  Set S2 40
          Set H1 5 Set H2 10
          ]



          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

          if T <= 6 [
          Set Ss1 60  Set Ss2 80
          Set Hh1 1  Set Hh2 5
          ]



          if T > 6 And T <= 12 [
          Set Ss1 0  Set Ss2 10
          Set Hh1 10  Set Hh2 20
          ]



          if T > 12 And T <= 18 [
          Set Ss1 0  Set Ss2 10
          Set Hh1 10  Set Hh2 25
          ]


          if T > 18 And T <= 23 [
          Set Ss1 30  Set Ss2 40
          Set Hh1 5 Set Hh2 10
          ]



          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
          ]


       if D = 1 [



       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W1 0 T P1
       matrix:set Q1 0 T P2
       matrix:set C1 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]



       if D = 2 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W2 0 T P1
       matrix:set Q2 0 T P2
       matrix:set C2 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]



       if D = 3 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W3 0 T P1
       matrix:set Q3 0 T P2
       matrix:set C3 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


       if D = 4 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W4 0 T P1
       matrix:set Q4 0 T P2
       matrix:set C4 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


       if D = 5 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W5 0 T P1
       matrix:set Q5 0 T P2
       matrix:set C5 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


       if D = 6 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W6 0 T P1
       matrix:set Q6 0 T P2
       matrix:set C6 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


       if D = 7 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W7 0 T P1
       matrix:set Q7 0 T P2
       matrix:set C7 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


       if D = 8 [
       let  P1 random-in-range S1 S2
       let  P2 random-in-range H1 H2
       let  P3 (100 - P1) - P2
       matrix:set W8 0 T P1
       matrix:set Q8 0 T P2
       matrix:set C8 0 T P3
        if On_duty_Days = 8 and On_duty_H = 70 [set myType  4]
       ]


     set t t + 1
    ]
     ;;===================================================

end


to Fit

   file-close-all

  let file user-new-file

  if is-string? file
  [

    if file-exists? file
      [ file-delete file ]
    file-open file


  ]


  Report.
end

to Report.
  while [I10 < cnt] [
  ask turtle I10 [


  file-print (word "Reprts" " - "
                    T-Art " - "
                    T-Beiniyat " - "
                    T-Clus " - "
                    T-Connection " - "
                    N-Degree  " - "



         );"Wait""   " AA-3


  ]
    set I10 I10 + 1
  ]

  file-close-all


end

to Plt


     set-current-plot "مقالات"

     set-current-plot-pen "مدل رفتاری"
     Plot sum [T-Art] of Turtles

     set-current-plot-pen "مدل محاسباتی"
     Plot Total-2

     set-current-plot "ارتباط"
     set-current-plot-pen "مدل رفتاری"
     Plot sum [T-Connection] of Turtles

     set-current-plot-pen "مدل محاسباتی"
     Plot Total-6


     set-current-plot "درجه"
     set-current-plot-pen "مدل رفتاری"
     Plot sum [T-Degree] of Turtles

     set-current-plot-pen "مدل محاسباتی"
     Plot Total-7



     set-current-plot "بینیت"
     set-current-plot-pen "مدل رفتاری"
     Plot sum [T-Beiniyat] of Turtles

     set-current-plot-pen "مدل محاسباتی"
     Plot Total-4


     set-current-plot "خوشه"
     set-current-plot-pen "مدل رفتاری"
     Plot sum [T-Clus] of Turtles

     set-current-plot-pen "مدل محاسباتی"
     Plot Total-5

end
@#$#@#$#@
GRAPHICS-WINDOW
209
10
763
565
-1
-1
6.0
1
10
1
1
1
0
1
1
1
-45
45
-45
45
0
0
1
ticks
30.0

BUTTON
11
10
183
43
NIL
Setup-Ntw
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
10
49
183
82
NIL
Sort-Ntw
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
785
118
971
163
Select
Select
"Articles" "Betweenness" "Clus" "Degree" "Conection"
0

INPUTBOX
785
171
971
231
Back-Ground
105.0
1
0
Color

SWITCH
782
415
970
448
Change-Color-In-Run
Change-Color-In-Run
0
1
-1000

PLOT
1161
10
1625
228
مقالات
NIL
NIL
0.0
10.0
0.0
12200.0
true
true
"" ""
PENS
"مدل رفتاری" 1.0 0 -8630108 true "" ""
"مدل محاسباتی" 1.0 0 -13345367 true "" ""

SLIDER
784
241
971
274
Article-Range
Article-Range
0
100
100.0
1
1
NIL
HORIZONTAL

MONITOR
784
10
969
55
سال جاری
Year
17
1
11

SLIDER
11
91
183
124
Max-Sort
Max-Sort
0
300
300.0
1
1
NIL
HORIZONTAL

BUTTON
11
133
185
166
NIL
Go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
783
284
970
317
Max-Performance-Article
Max-Performance-Article
100
300
300.0
1
1
NIL
HORIZONTAL

SLIDER
782
370
969
403
Connection-Range
Connection-Range
0
100
100.0
1
1
NIL
HORIZONTAL

SLIDER
782
328
970
361
Max-Performance-Connection
Max-Performance-Connection
0
828.4
828.0
1
1
NIL
HORIZONTAL

PLOT
1162
235
1625
440
ارتباط
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"مدل رفتاری" 1.0 0 -2674135 true "" ""
"مدل محاسباتی" 1.0 0 -5825686 true "" ""

SLIDER
782
459
971
492
Max-Performance-Degree
Max-Performance-Degree
0
1.5
1.0
1
1
NIL
HORIZONTAL

SLIDER
781
501
970
534
Degree-Range
Degree-Range
0
100
100.0
1
1
NIL
HORIZONTAL

PLOT
1162
448
1625
654
درجه
NIL
NIL
0.0
10.0
0.0
300.0
true
true
"" ""
PENS
"مدل رفتاری" 1.0 0 -2674135 true "" ""
"مدل محاسباتی" 1.0 0 -13840069 true "" ""

MONITOR
785
62
969
107
زمان سپری شده
Year+
17
1
11

PLOT
1634
12
2099
225
بینیت
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"مدل رفتاری" 1.0 0 -1184463 true "" ""
"مدل محاسباتی" 1.0 0 -13840069 true "" ""

PLOT
1633
238
2096
439
خوشه
NIL
NIL
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"مدل رفتاری" 1.0 0 -6917194 true "" ""
"مدل محاسباتی" 1.0 1 -817084 true "" ""

SLIDER
976
240
1152
273
Max-Performance-Beiniyat
Max-Performance-Beiniyat
0
16765
10930.0
1
1
NIL
HORIZONTAL

SLIDER
975
286
1153
319
Beiniyat-Range
Beiniyat-Range
0
100
100.0
1
1
NIL
HORIZONTAL

SLIDER
975
330
1154
363
Max-Performance-Clus
Max-Performance-Clus
0
226.8
226.0
1
1
NIL
HORIZONTAL

SLIDER
974
369
1154
402
Clus-Range
Clus-Range
0
100
100.0
1
1
NIL
HORIZONTAL

MONITOR
978
11
1152
56
تعداد محققان
Cnt
17
1
11

SWITCH
13
186
185
219
Export-File
Export-File
0
1
-1000

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.0.4
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
