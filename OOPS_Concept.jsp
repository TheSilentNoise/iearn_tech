<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>OOPS Concept | Class & Object</h2>

Object-oriented programming concept is one of the most important concepts in programming paradigm. Without having an idea of OPPS , you cannot move to the further concept in java or any such programming languages , So  this  tutorial will help you to understand about Java OOPS concepts with examples .Here we will discuss what is OOPS, objects and classes , and how it related to each other and also some simple example , hope you like to read this.
Several object-oriented programming languages have been invented since 1960.  Among them, C++, Java, and C# are the three most commercially successful OOP languages.
<p>
By end of this tutorial you will able to learn -<br/>
<ul>
<li>What is OOPS?</li>
<li>Requirements of using Object Oriented Programming approach</li>
<li>What are the advantages of OOP?</li>
<li>Limitations of object-oriented programming</li>
<li>Basic concept of object and class?</li>
<li>Differences between Class & Object :</li>
<li>Relationship between Object & Class.</li>

</ul>
</p>
<p>
<i>So, as the name suggests the first question that strikes in your mind is <b>what is OOPS?</b> -Object Oriented Programming (OOP) is a programming paradigm that is based on the concept of objects. An object is a data structure that contains data (fields) and functions (methods).Objects are instances of classes. In OOP a class can be compared with a blueprint or a template for objects. Class is a description of what data and methods should have an object of this class.
</i></p>

<h4>Requirements of using Object Oriented Programming approach</h4>
</p>The method of solving complex problems using OOP approach requires:</p>
<ul>
<li>1)	Change in mind set of programmers, who are familiar with structured programming.</li>
<li>2)	Closer interaction between program developers and end-users.</li>
<li>3)	Much concentration on requirement, analysis, and design.</li>
<li>4)	More attention for system development than just programming.</li>
<li>5)	Intensive testing procedures.</li>
</ul>

<h4>Advantage of Object Oriented Programming:</h4>
<p>The following are the advantages of software developed using object-oriented programming:</p>
<ul>
<li>1)	Software reuse is enhanced.</li>
<li>2)	Software maintenance cost can be reduced.</li>
<li>3)	Data access is restricted providing better data security.</li>
<li>4)	Software is easily developed for complex problems.</li>
<li>5)	Software may be developed meeting the requirements on time, on the estimated budget.</li>
<li>6)	Software has improved performance.</li>
<li>7)	Software quality is improved.</li>
<li>8)	Class hierarchies are helpful in the design process allowing increased extensibility.</li>
<li>9)	Modularity is achieved.</li>
<li>10)	Data abstraction is possible.</li>
</ul>

<h4>Limitations of object-oriented programming</h4>
<p>The following are the limitations of object-oriented programming:</p>
<ul>
<li>1)	The benefits of OOP may be realized after a long period.</li>
<li>2)	Requires intensive testing procedures.</li>
<li>3)	Solving a problem using OOP approach consumes more time than the time taken by structured.</li>
<li>4)	Programming approach.</li>
</ul>
<p>
Let us try to understand a little about all these, through a simple example. Human Beings are living forms. Here Human Being is said to be the <b>"class"</b>. Each Human is known as an <b>"object"</b>, which has specific characteristic that is every Human being (Male or Female) has two legs, two hands, two eyes, one nose, one heart etc. But they are different from each other , each objects are different from an Human instance to another.</p>
<p>All Human Beings can walk, eat, see, talk, hear etc.  This is known as <b>"method"</b>, that is walking is the same for everyone, but when I walk, not everyone walk.</p>
<p>Now we will see how we can relate our above example with the OOPS concept.</p>
<br/>


<h4><center>Objects</center></h4>
<b>Definition:</b>
<i>An object can be considered a "thing" that can perform a set of related activities. The set of activities that the object performs defines the object's Behavior. </i>
<p>In short object is a bundle of related variables and functions (also known methods).</p>
<p>Objects share two characteristics: They have State and Behavior.</p>
<p><b>State:</b> State is a well defined condition of an item. A state captures the relevant aspects of an object.</p>
<p><b>Behavior: </b>Behavior is the observable effects of an operation or event.</p>
<p><b>Examples:</b> My name is Nivedita, and I am an instance/object of class Female. When we say, Human Being, Male or Female, we just mean a kind, you, your friend, me we are the forms of these classes. We have a physical existence while a class is just a logical definition. We are the objects. So if Nivedita is said to be an object then we can say the following.</p>
<ul>
<li>Object:Nivedita</li>
<li>State:She lives in dankuni.</li>
<li>Behaviour: goes to office/ writes code etc.</li>
</ul>
<b>Syntax for defining an OBJECT:</b>
<p>Classname objname = new Classname()
<p>Classname represents name of the class. Objname represents JAVA valid variable name treated as object. New is called dynamic memory allocation operator.</p>


<h4><center>Class</center></h4>
<b>Defination :</b>
A class is a blueprint for any functional entity which defines its properties and its functions or describes the behavior/state that the object of its type supports.
<p><b>Example :</b> Here we can take Human Being as a class in the above example. Every human being has its own behavior/state.</p>
<p><b>Syntax for defining a CLASS:</b></p>
<p>
Class Classname</b>
{<br/>
Variable declaration;<br/>
Methods definition();<br/>
};<br/>
</p>
<p>Here, class is a keyword which is used for developing or creating user defined datatypes.Classname represents a JAVA valid variable name and it is treated as name of the class. Class names are used for creating objects.</p>
<p>Class contains two parts namely variable declaration and method definitions. Variable declaration represents what type of data members which we use as a part of the class. Method definition represents the type of methods which we used as the path of the class to perform an operation.</p>
 <center><p><img src="img/objectclass.JPG"/></p>
  <p>Fig1 : Object class relationship diagram</p></center>

<p><b>Example :</b>  Class & Object </p>
<p>Let us take a simple example of a class and object .</p>
 public class Human {  //Human is the class<br/>
   String name;  <br/>
   int age ;  // name and age are variables<br/>
   String address;<br/>
   Void eating(){<br/>
   }<br/>
   void sleeping() {<br/>
   }	<br/>
//eating , sleeping is the methods<br/>
}<br/>
Human humanObject = new Human();  // humanObject is the object of Human class<br/>
humanObject.eating();<br/>
<center><p><img src="img/classdiagram.JPG"/></p>
<p>Fig 2 : Class diagram of class human</p></center>

<p><b>Differences between Class & Object :</b></p>
<table class="table table-striped">
    <thead>
      <tr>
        <th>Class</th>
        <th>Object</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>A class is a way of binding the data and associated methods in a single unit.</td>
        <td>Object is an instance of class data type.</td>
      </tr>
      <tr>
        <td>It generates object	It gives life to a class.</td>
        <td>It is the prototype or model.	It is a container for storing its features.</td>
      </tr>
      <tr>
        <td>Does not occupy memory location.</td>
        <td>It occupies memory</td>
      </tr>
       <tr>
        <td>It cannot be manipulated because it is not available in the memory.</td>
        <td>It can be manipulated.</td>
      </tr>
    </tbody>
  </table>
	
<hr>

</body>
</html>