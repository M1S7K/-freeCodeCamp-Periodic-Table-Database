<sectio>
<h1 align="center">Periodic Table Database</h1>
<h2>Description</h2>
<p>A Bash script to get information about chemical elements from a periodic table database.</p>
<h2>Purpose</h2>
  <p><a href="https://www.freecodecamp.org">freeCodeCamp</a> Relational Database certification</p>
<h2>Required steps</h2>
  <ol>
    <li>Complete the project.</li>
      <ul>
        <li>Rename the weight column to atomic_mass</li>
        <li>Rename the melting_point column to melting_point_celsius and the boiling_point column to boiling_point_celsius</li>
        <li>Melting_point_celsius and boiling_point_celsius columns should not accept null values</li>
        <li>Add the UNIQUE constraint to the symbol and name columns from the elements table</li>
        <li>Symbol and name columns should have the NOT NULL constraint</li>
        <li>Set the atomic_number column from the properties table as a foreign key that references the column of the same name in the elements table</li>
        <li>Create a types table that will store the three types of elements</li>
        <li>Types table should have a type_id column that is an integer and the primary key</li>
        <li>Types table should have a type column that's a VARCHAR and cannot be null. It will store the different types from the type column in the properties table</li>
        <li>Add three rows to your types table whose values are the three different types from the properties table</li>
        <li>Properties table should have a type_id foreign key column that references the type_id column from the types table. It should be an INT with the NOT NULL constraint</li>
        <li>Each row in your properties table should have a type_id value that links to the correct type from the types table</li>
        <li>Capitalize the first letter of all the symbol values in the elements table. Be careful to only capitalize the letter and not change any others</li>
        <li>Remove all the trailing zeros after the decimals from each row of the atomic_mass column. You may need to adjust a data type to DECIMAL for this. Be careful not to change the value</li>
        <li>Add the element with atomic number 9 to your database. Its name is Fluorine, symbol is F, mass is 18.998, melting point is -220, boiling point is -188.1, and it's a nonmetal</li>
        <li>Add the element with atomic number 10 to your database. Its name is Neon, symbol is Ne, mass is 20.18, melting point is -248.6, boiling point is -246.1, and it's a nonmetal</li>
        <li>Create a periodic_table folder in the project folder and turn it into a git repository with git init</li>
        <li>Repository should have a main branch with all your commits</li>
        <li>Periodic_table repo should have at least five commits</li>
        <li>Create an element.sh file in your repo folder for the program I want you to make</li>
        <li>Script (.sh) file should have executable permissions</li>
        <li>If run ./element.sh, it should output Please provide an element as an argument. and finish running.</li>
        <li>If run ./element.sh 1, ./element.sh H, or ./element.sh Hydrogen, it should output The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.</li>
        <li>If run ./element.sh script with another element as input, you should get the same output but with information associated with the given element.</li>
        <li>If the argument input to element.sh script doesn't exist as an atomic_number, symbol, or name in the database, the output should be I could not find that element in the database.</li>
        <li>The message for the first commit in repo should be Initial commit</li>
        <li>The rest of the commit messages should start with fix:, feat:, refactor:, chore:, or test:</li>
        <li>Delete the non existent element, whose atomic_number is 1000, from the two tables</li>
        <li>Properties table should not have a type column</li>
        <li>finish your project while on the main branch. Your working tree should be clean and you should not have any uncommitted changes</li>
      </ul>
    <li>Submit the code.</li>
      <ul>
        <li>Save all the required files into a public repository and submit the URL.</li>
      </ul>
  </ol>
<h2>Result</h2>
<div>
  <p>A user named Fabio has been added to the database</p>
  <img src="https://raw.githubusercontent.com/M1S7K/freeCodeCamp-Salon-Appointment-Scheduler/main/screenshots/Terminal.png" alt="terminal_screenshot" width="380">
</div>
<div>
  <p>All the necessary steps were completed</p>
  <img src="https://raw.githubusercontent.com/M1S7K/freeCodeCamp-Salon-Appointment-Scheduler/main/screenshots/Task.png" width="380">
</div>
<h2>Possible options for the future project improvement</h2>
<ul>
  <li>Add the entire periodic table</li>
  <li>Case-insensitive serch</li>
</ul>
<h2>Helpful Links</h2>
<ol>
  <li><a href="https://www.postgresql.org/docs/">PostgreSQL documentation</a></li>
  <li><a href="https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html">Bash documentation</a>
  <li><a href="https://www.freecodecamp.org/learn/relational-database/">freeCodeCamp Relational Database course</a>
  <li><a href="https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/adding-locally-hosted-code-to-github">Github documentation</a>
  <li><a href="https://git-scm.com/doc">Git documentation</a>
</ol>
 </section>

