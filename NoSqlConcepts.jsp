<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TheSilentNoise</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    
  
  </head>
  <body>
  <div id="fb-root"></div>
		<script>
		(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.11&appId=1400195850017479';
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		</script>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	 <section id ="" class="section-padding">
	 <div class="container">
	  						   <div class="header-section text-center">
				          			  <h2>NoSql Concepts</h2>
				          			  <hr class="bottom-line">
				               </div>
		      
							   <div class ="col-sm-12">
								 
											 <div class="col-sm-8">
												<h2 style="text-align: justify;">What is NoSQL?</h2>
<p style="text-align: justify;">NoSQL encompasses a wide variety of different database technologies that were developed in response to the demands presented in building modern applications:</p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>Developers are working with applications that create massive volumes of new, rapidly changing data types &mdash; structured, semi-structured, unstructured and polymorphic data.</li>
<li>Long gone is the twelve-to-eighteen month waterfall development cycle. Now small teams work in agile sprints, iterating quickly and pushing code every week or two, some even multiple times every day.</li>
<li>Applications that once served a finite audience are now delivered as services that must be always-on, accessible from many different devices and scaled globally to millions of users.</li>
<li>Organizations are now turning to scale-out architectures using open source software, commodity servers and cloud computing instead of large monolithic servers and storage infrastructure.</li>
</ol>
<p style="text-align: justify;">Relational databases were not designed to cope with the scale and agility challenges that face modern applications, nor were they built to take advantage of the commodity storage and processing power available today.</p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>NoSQL Database Types</u></h2>
<ul style="text-align: justify;">
<li><strong><em>Document databases&nbsp;</em></strong>pair each key with a complex data structure known as a document. Documents can contain many different key-value pairs, or key-array pairs, or even nested documents. Eg- MongoDB</li>
<li><strong><em>Graph stores&nbsp;</em></strong>are used to store information about networks of data, such as social connections. Graph stores include Neo4J and Giraph.</li>
<li><strong><em>Key-value stores&nbsp;</em></strong>are the simplest NoSQL databases. Every single item in the database is stored as an attribute name (or 'key'), together with its value. Examples of key-value stores are Riak and Berkeley DB. Some key-value stores, such as Redis, allow each value to have a type, such as 'integer', which adds functionality.</li>
<li><strong><em>Wide-column stores&nbsp;</em></strong>such as Cassandra and HBase are optimized for queries over large datasets, and store columns of data together, instead of rows.</li>
</ul>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>The Benefits of NoSQL</u></h2>
<p style="text-align: justify;">When compared to relational databases, NoSQL databases are&nbsp;<a href="https://www.mongodb.com/scale">more scalable and provide superior performance,</a>&nbsp;and their data model addresses several issues that the relational model is not designed to address:</p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>Large volumes of rapidly changing structured, semi-structured, and unstructured data</li>
<li>Agile sprints, quick schema iteration, and frequent code pushes</li>
<li>Object-oriented programming that is easy to use and flexible</li>
<li>Geographically distributed scale-out architecture instead of expensive, monolithic architecture</li>
</ol>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>Dynamic Schemas</u></h2>
<p style="text-align: justify;">Relational databases require that schemas be defined before you can add data. For example, you might want to store data about your customers such as phone numbers, first and last name, address, city and state &ndash; a SQL database needs to know what you are storing in advance.</p>
<p style="text-align: justify;">This fits poorly with&nbsp;<a href="https://www.mongodb.com/agile-development">agile development</a>&nbsp;approaches, because each time you complete new features, the schema of your database often needs to change. So if you decide, a few iterations into development, that you'd like to store customers' favorite items in addition to their addresses and phone numbers, you'll need to add that column to the database, and then migrate the entire database to the new schema.</p>
<p style="text-align: justify;">If the database is large, this is a very slow process that involves significant downtime. If you are frequently changing the data your application stores &ndash; because you are iterating rapidly &ndash; this downtime may also be frequent. There's also no way, using a relational database, to effectively address data that's completely unstructured or unknown in advance.</p>
<p style="text-align: justify;">NoSQL databases are built to allow the insertion of data without a predefined schema. That makes it easy to make significant application changes in real-time, without worrying about service interruptions &ndash; which means development is faster, code integration is more reliable, and less database administrator time is needed. Developers have typically had to add application-side code to enforce data quality controls, such as mandating the presence of specific fields, data types or permissible values. More sophisticated NoSQL databases allow validation rules to be applied within the database, allowing users to enforce governance across data, while maintaining the agility benefits of a dynamic schema.</p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>Auto-sharding</u></h2>
<p style="text-align: justify;">Because of the way they are structured, relational databases usually scale vertically &ndash; a single server has to host the entire database to ensure acceptable performance for cross- table joins and transactions. This gets expensive quickly, places limits on scale, and creates a relatively small number of failure points for database infrastructure. The solution to support rapidly growing applications is to scale horizontally, by adding servers instead of concentrating more capacity in a single server.</p>
<p style="text-align: justify;">'Sharding' a database across many server instances can be achieved with SQL databases, but usually is accomplished through SANs and other complex arrangements for making hardware act as a single server. Because the database does not provide this ability natively, development teams take on the work of deploying multiple relational databases across a number of machines. Data is stored in each database instance autonomously. Application code is developed to distribute the data, distribute queries, and aggregate the results of data across all of the database instances. Additional code must be developed to handle resource failures, to perform joins across the different databases, for data rebalancing, replication, and other requirements. Furthermore, many benefits of the relational database, such as transactional integrity, are compromised or eliminated when employing manual sharding.</p>
<p style="text-align: justify;">NoSQL databases, on the other hand, usually support auto-sharding, meaning that they natively and automatically spread data across an arbitrary number of servers, without requiring the application to even be aware of the composition of the server pool. Data and query load are automatically balanced across servers, and when a server goes down, it can be quickly and transparently replaced with no application disruption.</p>
<p style="text-align: justify;"><a href="https://www.mongodb.com/big-data-explained">Cloud computing</a>&nbsp;makes this significantly easier, with providers such as Amazon Web Services providing virtually unlimited capacity on demand, and taking care of all the necessary infrastructure administration tasks. Developers no longer need to construct complex, expensive platforms to support their applications, and can concentrate on writing application code. Commodity servers can provide the same processing and storage capabilities as a single high-end server for a fraction of the price.</p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>Replication</u></h2>
<p style="text-align: justify;">Most NoSQL databases also support automatic database replication to maintain availability in the event of outages or planned maintenance events. More sophisticated NoSQL databases are fully self-healing, offering automated failover and recovery, as well as the ability to distribute the database across multiple geographic regions to withstand regional failures and enable data localization. Unlike relational databases, NoSQL databases generally have no requirement for separate applications or expensive add-ons to implement replication.</p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>Integrated Caching</u></h2>
<p style="text-align: justify;">A number of products provide a caching tier for SQL database systems. These systems can improve read performance substantially, but they do not improve write performance, and they add operational complexity to system deployments. If your application is dominated by reads then a distributed cache could be considered, but if your application has just a modest write volume, then a distributed cache may not improve the overall experience of your end users, and will add complexity in managing cache invalidation.</p>
<p style="text-align: justify;">Many NoSQL database technologies have excellent integrated caching capabilities, keeping frequently-used data in system memory as much as possible and removing the need for a separate caching layer. Some NoSQL databases also offer fully managed, integrated in-memory database management layer for workloads demanding the highest throughput and lowest latency.</p>
<h2 style="text-align: justify;">NoSQL vs. SQL Summary</h2>
<table style="border-color: green;" width="100%">
<tbody>
<tr style="height: 31px;">
<td style="width: 104px; height: 31px;">&nbsp;</td>
<td style="width: 239px; height: 31px;">
<p><strong><u>SQL Databases</u></strong></p>
</td>
<td style="width: 252px; height: 31px;">
<p><strong><u>NOSQL Databases</u></strong></p>
</td>
</tr>
<tr style="height: 71px;">
<td style="width: 104px; height: 71px;">
<p><strong>Types</strong></p>
</td>
<td style="width: 239px; height: 71px;">
<p>One type (SQL database) with minor variations</p>
</td>
<td style="width: 252px; height: 71px;">
<p>Many different types including key-value stores,&nbsp;<a href="https://www.mongodb.com/document-databases">document databases</a>, wide-column stores, and graph databases</p>
</td>
</tr>
<tr style="height: 111px;">
<td style="width: 104px; height: 111px;">
<p><strong>Development History</strong></p>
</td>
<td style="width: 239px; height: 111px;">
<p>Developed in 1970s to deal with first wave of data storage applications</p>
</td>
<td style="width: 252px; height: 111px;">
<p>Developed in late 2000s to deal with limitations of SQL databases, especially scalability, multi-structured data, geo-distribution and agile development sprints</p>
</td>
</tr>
<tr style="height: 51px;">
<td style="width: 104px; height: 51px;">
<p><strong>Examples</strong></p>
</td>
<td style="width: 239px; height: 51px;">
<p>MySQL, Postgres, Microsoft SQL Server, Oracle Database</p>
</td>
<td style="width: 252px; height: 51px;">
<p>MongoDB, Cassandra, HBase, Neo4j</p>
</td>
</tr>
<tr style="height: 331px;">
<td style="width: 104px; height: 331px;">
<p><strong>Data Storage Model</strong></p>
</td>
<td style="width: 239px; height: 331px;">
<p>Individual records (e.g., 'employees') are stored as rows in tables, with each column storing a specific piece of data about that record (e.g., 'manager,' 'date hired,' etc.), much like a spreadsheet. Related data is stored in separate tables, and then joined together when more complex queries are executed. For example, 'offices' might be stored in one table, and 'employees' in another. When a user wants to find the work address of an employee, the database engine joins the 'employee' and 'office' tables together to get all the information necessary.</p>
</td>
<td style="width: 252px; height: 331px;">
<p>Varies based on database type. For example, key-value stores function similarly to SQL databases, but have only two columns ('key' and 'value'), with more complex information sometimes stored as BLOBs within the 'value' columns. Document databases do away with the table-and-row model altogether, storing all relevant data together in single 'document' in JSON, XML, or another format, which can nest values hierarchically.</p>
</td>
</tr>
<tr style="height: 171px;">
<td style="width: 104px; height: 171px;">
<p><strong>Schemas</strong></p>
</td>
<td style="width: 239px; height: 171px;">
<p>Structure and data types are fixed in advance. To store information about a new data item, the entire database must be altered, during which time the database must be taken offline.</p>
</td>
<td style="width: 252px; height: 171px;">
<p>Typically dynamic, with some enforcing data validation rules. Applications can add new fields on the fly, and unlike SQL table rows, dissimilar data can be stored together as necessary. For some databases (e.g., wide-column stores), it is somewhat more challenging to add new fields dynamically.</p>
</td>
</tr>
<tr style="height: 211px;">
<td style="width: 104px; height: 211px;">
<p><strong>Scaling</strong></p>
</td>
<td style="width: 239px; height: 211px;">
<p>Vertically, meaning a single server must be made increasingly powerful in order to deal with increased demand. It is possible to spread SQL databases over many servers, but significant additional engineering is generally required, and core relational features such as JOINs, referential integrity and transactions are typically lost.</p>
</td>
<td style="width: 252px; height: 211px;">
<p>Horizontally, meaning that to add capacity, a database administrator can simply add more commodity servers or cloud instances. The database automatically spreads data across servers as necessary.</p>
</td>
</tr>
<tr style="height: 71px;">
<td style="width: 104px; height: 71px;">
<p><strong>Development Model</strong></p>
</td>
<td style="width: 239px; height: 71px;">
<p>Mix of open-source (e.g., Postgres, MySQL) and closed source (e.g., Oracle Database)</p>
</td>
<td style="width: 252px; height: 71px;">
<p>Open-source</p>
</td>
</tr>
<tr style="height: 71px;">
<td style="width: 104px; height: 71px;">
<p><strong>Supports Transactions</strong></p>
</td>
<td style="width: 239px; height: 71px;">
<p>Yes, updates can be configured to complete entirely or not at all</p>
</td>
<td style="width: 252px; height: 71px;">
<p>In certain circumstances and at certain levels (e.g., document level vs. database level)</p>
</td>
</tr>
<tr style="height: 71px;">
<td style="width: 104px; height: 71px;">
<p><strong>Data Manipulation</strong></p>
</td>
<td style="width: 239px; height: 71px;">
<p>Specific language using Select, Insert, and Update statements, e.g. SELECT fields FROM table WHERE&hellip;</p>
</td>
<td style="width: 252px; height: 71px;">
<p>Through object-oriented APIs</p>
</td>
</tr>
<tr style="height: 111px;">
<td style="width: 104px; height: 111px;">
<p><strong>Consistency</strong></p>
</td>
<td style="width: 239px; height: 111px;">
<p>Can be configured for strong consistency</p>
</td>
<td style="width: 252px; height: 111px;">
<p>Depends on product. Some provide strong consistency (e.g., MongoDB, with tunable consistency for reads) whereas others offer eventual consistency (e.g., Cassandra).</p>
</td>
</tr>
</tbody>
</table>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;"><u>Implementing a NoSQL Database</u></h2>
<p style="text-align: justify;">Often, organizations will begin with a small-scale trial of a NoSQL database in their organization, which makes it possible to develop an understanding of the technology in a low-stakes way. Most NoSQL databases are also open-source, meaning that they can be downloaded, implemented and scaled at little cost. Because development cycles are faster, organizations can also innovate more quickly and deliver superior customer experience at a lower cost.</p>
<p style="text-align: justify;">As you consider alternatives to legacy infrastructures, you may have several motivations: to scale or perform beyond the capabilities of your existing system, identify viable alternatives to expensive proprietary software, or increase the speed and agility of development.</p>
<p style="text-align: justify;">&nbsp;</p>
		
		
	
    <div class="fb-like" data-href="http://www.iearn.tech/NoSqlConcepts.jsp" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
    &nbsp;&nbsp;&nbsp;
    <div class="pull-right">
     <script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: en_US</script>
   <script type="IN/Share" data-url="http://www.iearn.tech/NoSqlConcepts.jsp" data-counter="right"></script><br/><br/>
    </div>
   
    <div class="fb-comments" data-href="http://www.iearn.tech/NoSqlConcepts.jsp" data-numposts="5"></div>									
											
</div>
											 
   
											
</div>
</div>
	 
    
</section>
	 
	 
    
	<div>
		<%@include file="footer.jsp" %>
	</div>
    
     
   
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    
  </body>
</html>