the whole error was tat in csv the date format was dd-mm-yyyy , but 
sql only like yyyy-mm-dd , so I had to fix that , also learned that each time I ran 
load infile , and the result showed errors , the data was being put into the table 
so had to delete about 400 rows or so . Now the project can begin . 

1st : create dim tables . the data is alr clean so no need for cleaning
2nd : Create fact table and use joins to make relations ig
3rd : run some queries to see if new dataset works

Great everything in mysql done , moving on to power bi . 

1st : Import and set relations 
2nd : create a date table 
3rd : Make core dax measures 
4th : Making visuals
5th : edit slicer interactions
6th : Make dashboard more professional

More advanced : 

1st : make new measures 
2nd : make a new dashboard for customers
3rd : make buttons 
4th : make tooltip

Finally this dashboard is done , 
1st : prepare everything to be public 
	> Mysql , see for anything tahts PII 
	> Power bi , very unlikely but still neccassary 
2nd : prepare readme , screenshots etc 
3rd : fix git hub desktop not detecting newly created prjects