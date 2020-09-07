# Database-Processing-M3<br>
### Part 1

You were hired to do some data analysis for a local zoo.  Below is the data table, including the necessary constraints and all the insert statements to populate the database.<br>  

-- Drop all the tables to clean up<br>
DROP TABLE Animal;<br>


Since none of the managers in the zoo know SQL, it is up to you to write the queries to answer the following list of questions.<br>
1.	Find all the animals (their names) that take less than 1.5 hours to feed<br>
2.	Find both the rare and exotic animals (in a single query)<br><br>
3.	Return the listings for all animals whose rarity is missing (NULL) in the database<br>
4.	Find the rarity rating of all animals that require between 1 and 2.5 hours to be fed<br>
5.	Find the minimum and maximum feeding time amongst all the animals in the zoo (in a single query)<br>
6.	Find the average feeding time for all of the rare animals<br>
7.	Determine how many NULLs there are in the ACategory column using SQL<br><br>
8.	Find all animals named 'Alpaca', 'Llama' or any other animals that are not listed as exotic <br>
### Part 2<br>

a)	Write python code that is going to export a table from SQLite database into a CSV file. You can use the attached SQLite_LoadAnimalTable.py to create and populate the table before you start. 
Once you have created the database using attached code, your python code solution should query the rows from the Animal table in SQLite database and write a new animal.txt file that is contains the comma-separated rows from the Animal table, e.g.,:
<br>1, Galapagos Penguin, exotic, 0.5<br>
2, Emperor Penguin, rare, 0.75<br>
…<br>
b)	Write python code that is going to load the comma-separated animal.txt file you have created in part-a into the Animal table in SQLite database. Your code must read the animal.txt file and use executemany() to load the data in python (i.e., your solution cannot use the sample code from part 2-a to load the data). At the end of your code, you should verify how many rows were loaded by printing the output of 
SELECT COUNT(*) FROM Animal;
