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
    
    <link rel="stylesheet" type="text/css" href="css/font.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/imagehover.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
  
  </head>
  <body>
  
	 <div>
		<%@include file="header.jsp" %>
	 </div>
	 
	 <section id ="" class="section-padding">
	 <div class="container">
	  						   <div class="header-section text-center">
				          			  <h2>Apache Commons Chains</h2>
				          			  <hr class="bottom-line">
				               </div>
		      
							   <div class ="col-sm-12">
								 
											 <div class="col-sm-8">
												<h4 style="text-align: justify;">Introduction to Apache Commons Chains&nbsp;</h4>
<p style="text-align: justify;">If you want to cleanly separate the execution and presentation layers without complicating the design of your application then use the Chain of Responsibility and Command patterns so that the presentation layer can execute a command, or chain of commands, without needing to know how the command is implemented. In practice, there are usually commands within commands. First, it does some things for the benefit of the presentation layer, then it executes the business logic, and then it does some more presentation layer things. The problem many developers face is how to cleanly separate the business logic in the middle of a web command from other necessary tasks that are part of the request/response transaction.</p>
<p style="text-align: justify;"><em>&ldquo;A popular technique for organizing the execution of complex processing flows is the "<strong>Chain of Responsibility</strong>" pattern, as described (among many other places) in the classic "<strong>Gang of Four</strong>" design patterns book. Although the fundamental API contracts required to implement this design pattern are extremely simple, it is useful to have a base API that facilitates using the pattern, and (more importantly) encouraging composition of command implementations from multiple diverse sources.&rdquo;&nbsp; -----</em>That is what <strong>Apache</strong> has to say&nbsp;..</p>
<p style="text-align: justify;">The Gang of Four's Chain of Responsibility (COR) behavioural design pattern is interesting and commonly used to model a set of operations. Each operation needs to be modelled as a command object and linked to others to form a chain. The command objects act upon some data and indicate whether the control should get passed to the next command in the chain. The benefit is that an operation can be added or removed easily without changing code. Jakarta Commons Chain models this design pattern as a reusable library. For successful execution, the arguments and the sub-commands passed from the command line while executing a command should be made available to the processing code.</p>
<p style="text-align: justify;">The&nbsp;<em>Chain of Responsibility</em>&nbsp;package combines the Command pattern with the classic Chain of Responsibility pattern to make it easy to call a business command as part of a larger application command.</p>
<h3>Key interfaces of Apache Commons Chains&nbsp;</h3>
<p style="text-align: justify;">In the Chain framework, units of work within a sequential flow of steps are represented by commands. A sequence of commands forms a chain. The chain itself is also a command that can be executed. Chains are kept in catalogs, from which they can be retrieved at the time of execution. For this purpose, the Chain framework offers the interfaces&nbsp;Chain,&nbsp;Command, and&nbsp;Catalog, see the figure below for a class diagram.</p>
<p style="text-align: justify;">&nbsp; &nbsp;&nbsp;To implement the patterns, the&nbsp;Chain&nbsp;package defines five key interfaces:</p>
<ul style="text-align: justify;">
<li><strong>Context</strong></li>
<li><strong>Command</strong></li>
<li><strong>Chain</strong></li>
<li><strong>Filter</strong></li>
<li><strong>Catalog</strong></li>
</ul>
<p style="text-align: justify;"><strong>Context</strong>.:A&nbsp;Context&nbsp;represents the state of an application. In the Chain package,&nbsp;Context&nbsp;is a marker interface for a&nbsp;java.util.Map. The Context is an envelope containing the attributes needed to complete a transaction. In other words, a Context is a stateful object with member values.</p>
<p style="text-align: justify;"><strong>Command</strong>.:A&nbsp;Command&nbsp;represents a unit of work. A Command has a single entry method:&nbsp;public boolean execute(Context context). A Command acts upon the state passed to it through a context object, but retains no state of its own. Commands may be assembled into a Chain, so that a complex transaction can be created from discrete units of work. If a Command returns&nbsp;true, then other Commands in a Chain should&nbsp;not&nbsp;be executed. If a Command returns&nbsp;false, then other Commands in the Chain (if any) may execute.</p>
<p style="text-align: justify;"><strong>Chain</strong>:Chain&nbsp;implements the&nbsp;Command&nbsp;interface, so a&nbsp;Chain&nbsp;can be used interchangeably with a&nbsp;Command. An application doesn't need to know if it's calling a Chain or a Command, so you can refactor from one to the other. A Chain can nest other Chains as desired.This property is known as the&nbsp;Liskov substitution principle.( <em>The</em><em>&nbsp;</em><strong><em>Liskov Substitution Principle</em></strong><em>&nbsp;</em><em>(LSP, lsp) is a concept in Object Oriented Programming that states: Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.</em>)</p>
<p style="text-align: justify;"><strong>Filter</strong>.:Ideally, every command would be an island. In real life, we sometimes need to allocate resources and be assured the resources will be released no matter what happens. A&nbsp;Filter&nbsp;is a specialized&nbsp;Command&nbsp;that adds a&nbsp;postProcess&nbsp;method. A&nbsp;Chain&nbsp;is expected to call the&nbsp;postProcess&nbsp;method of any filters in the chain before returning. A Command that implements Filter can safely release any resources it allocated through the&nbsp;postProcess&nbsp;method, even if those resources are shared with other Commands.</p>
<p style="text-align: justify;"><strong>Catalog</strong>.:Many applications use "facades" and "factories" and other techniques to avoid binding layers too closely together. Layers need to interact, but often we don't want them to interact at the classname level. A&nbsp;Catalog&nbsp;is a collection of logically named Commands (or Chains) that a client can execute, without knowing the Command's classname.</p>
<p style="text-align: justify;">Now, we will be discussed each of these key interfaces in details level using a simple coding module , so that you can understand how a chain of commands works generally.</p>
<h3>Explanation of the key interfaces using a simple code</h3>
<p style="text-align: justify;">This example shows how you can use the Commons Chain API to create and execute a sequence of commands. Of course, like almost every new piece of software written in Java these days, Commons Chain can be configured via an XML file</p>
<p style="text-align: justify;"><strong>Step 1</strong> . <strong>An </strong><strong>implementation of</strong><strong> a command</strong></p>
<p style="text-align: justify;">The Chain framework itself contains ready-to-use implementations of&nbsp;Chain&nbsp;and&nbsp;Catalog.&nbsp; This class inherits Command class and overrides execute method. Here Command is the interface which you must to implement by your class.&nbsp; Each class should have the execute method where the context object is passed and the return type of the execute method is always Boolean , because it decides whether a chain will break/to stop the chain further processing or continue executing . The return type true defines that the chain will break here , where the false defines that the chain will continue executing . All your business logic should be there inside the execute( ) method.</p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>public class Command1 implements Command {</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>&nbsp;&nbsp; public boolean execute(Context ctx) throws Exception {</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.out.println("This is command1: " );</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>//Add functionality for Command1</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>&nbsp;&nbsp; }</strong></span></p>
<p style="text-align: justify;"><span style="color: #000000;"><strong>}</strong></span></p>
<p style="text-align: justify;"><strong>Step 2 : A chain-config.xml file</strong></p>
<p style="text-align: justify;">An application using the Chain framework must instantiate a&nbsp;Catalog&nbsp;with chains and commands. This can be done directly by using the&nbsp;Chain&nbsp;API or by using a configuration file. The latter option offers the most flexibility. Below is the example of&nbsp; a simple configuration file.</p>
<p style="text-align: justify;"><strong>&lt;catalog&gt;</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp; &lt;chain name="a-chain"&gt;</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command className="chain.test.Command1"/&gt;</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command className="chain.test.Command2"/&gt;</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp; &lt;/chain&gt;</strong></p>
<p style="text-align: justify;"><strong>&lt;/catalog&gt;</strong></p>
<p style="text-align: justify;">&nbsp;<strong>Step 3 : </strong><strong>An extension of ContextBase</strong></p>
<p style="text-align: justify;">The&nbsp;Context&nbsp;interface is an extension of the&nbsp;Map&nbsp;interface, but doesn't add any extra methods. The Chain framework offers&nbsp;ContextBase&nbsp;as a useful implementation of the&nbsp;Context&nbsp;interface. The chain's caller passes&nbsp;YourContext, the property of which is set using the setter. The chain's commands do not need to know&nbsp;Context's implementation. They can just retrieve the property with&nbsp;get("property"). In spite of this flexibility, type-safety is ensured. The command can assign a new value to the property with&nbsp;ctx.put("property", "a-new-value"), but&nbsp;ctx.put("property",&nbsp;new&nbsp;Object())&nbsp;yields an&nbsp;UnsupportedOperationException. The&nbsp;ContextBase&nbsp;uses introspection for the implementation of the&nbsp;get()&nbsp;and&nbsp;put()&nbsp;methods.</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;<strong> public class YourContext extends ContextBase {</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;private String property;</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;public String getProperty() {</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; return property;</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; public void setProperty(String string) {</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;property = string;</strong></p>
<p style="text-align: justify;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}</strong></p>
<p style="text-align: justify;"><strong>&nbsp;}</strong></p>
<p style="text-align: justify;"><strong>Step 4 : </strong>&nbsp;<strong>The execution of a chain</strong></p>
<p style="text-align: justify;">Now the execution of chain of commands can be done using the below code&nbsp; . Here the&nbsp;ConfigParser&nbsp;can be used to instantiate the&nbsp;Catalog. The&nbsp;Catalog&nbsp;is stored in the singleton&nbsp;CatalogFactoryBase. Because the&nbsp;Catalog&nbsp;doesn't have a name attribute in the configuration file, it automatically is&nbsp;CatalogFactory's default catalog. Therefore, it can be retrieved by the&nbsp;getCatalog()&nbsp;method. Only chains or commands that are direct children of&nbsp;Catalog&nbsp;can be retrieved by the&nbsp;getCommand()&nbsp;method. So, the command&nbsp;&ldquo;Command1&nbsp;&ldquo; cannot be retrieved directly from&nbsp;Catalog. If desired, you can configure&nbsp;&ldquo;Command1&rdquo;&nbsp;as a direct child of&nbsp;Catalog. In that case,&nbsp;Catalog&nbsp;should also have a name attribute.</p>
<p style="text-align: justify;"><strong>public class ChainStart {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;public static void main(String[] args) {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainStart cs = new ChainStart();</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Get the catalog</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalog catalog = cs.parseConfigFile();</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Get the command</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Command command = catalog.getCommand("a-chain");</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Create a context</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YourContext ctx = new YourContext();</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ctx.setProperty("a-value");&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Execute the command</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; command.execute(ctx);</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (Exception exc) {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.out.println(exc.toString());</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp; }</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; private Catalog parseConfigFile() {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Parse the configuration file</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ConfigParser parser = new ConfigParser();</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String fileLocation = "/chain/test/chain-config.xml";</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parser.parse(this.getClass().getResource(fileLocation));</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (Exception exc) {</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.out.println(exc.toString());</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return CatalogFactoryBase.getInstance().getCatalog();</strong></p>
<p style="text-align: justify;"><strong>&nbsp;&nbsp; }</strong></p>
<p style="text-align: justify;"><strong>}</strong></p>
<h3>Mandatory Jars needed to execute the Apache chain-of-commands code</h3>
<p style="text-align: justify;">You will need to add this .jars to your classpath, as well. After adding these .jar files to your classpath, the&nbsp;CatalogLoader&nbsp;successfully compiled and ran. I have mentioned the exact version of the jars that I used. Mismatch of the version may cause the execution error in the code.</p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>The main key packages is the -&nbsp;&nbsp; <strong>commons-chain-1.2.jar</strong></li>
<li>Commons Digester to read and parse the configuration file - <strong>commons-digester-1.8.jar</strong></li>
<li>Digester depends on Commons Collections (<strong>commons-collections-3.2.1.jar</strong> ), Commons Logging (<strong>commons-logging-1.2.jar</strong>), and Commons BeanUtils (<strong>commoms-beanutils-1.9.3.jar</strong>).</li>
</ol>
<p style="text-align: justify;"><strong>Maven dependencies are given below :</strong></p>
<ol style="text-align: justify;">
<li>&lt;dependency&gt;</li>
</ol>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;groupId&gt;commons-chain&lt;/groupId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;artifactId&gt;commons-chain&lt;/artifactId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;version&gt;1.2&lt;/version&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/dependency&gt;</p>
<ol style="text-align: justify;" start="2">
<li>&lt;dependency&gt;</li>
</ol>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;groupId&gt;commons-beanutils&lt;/groupId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;artifactId&gt;commons-beanutils&lt;/artifactId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;version&gt;1.9.3&lt;/version&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/dependency&gt;</p>
<ol style="text-align: justify;" start="3">
<li>&lt;dependency&gt;</li>
</ol>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;groupId&gt;commons-logging&lt;/groupId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;artifactId&gt;commons-logging&lt;/artifactId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;version&gt;1.2&lt;/version&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/dependency&gt;</p>
<ol style="text-align: justify;" start="4">
<li>&lt;dependency&gt;</li>
</ol>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;groupId&gt;commons-digester&lt;/groupId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;artifactId&gt;commons-digester&lt;/artifactId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;version&gt;1.8&lt;/version&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/dependency&gt;</p>
<ol style="text-align: justify;" start="5">
<li>&lt;dependency&gt;</li>
</ol>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;groupId&gt;commons-collections&lt;/groupId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;artifactId&gt;commons-collections&lt;/artifactId&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;version&gt;3.2.1&lt;/version&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/dependency&gt;</p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;">Example 1 : <strong>Basic example of&nbsp; Apache Common Chain&nbsp;using java program.</strong></h3>
<p style="text-align: justify;"><strong>Requirement :</strong></p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>IDE used : Eclipse</li>
<li>Java version used : 1.8</li>
<li>Above mentioned Jars.</li>
</ol>
<p style="text-align: justify;"><strong>Steps to create &amp; execute the project </strong></p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp;1.Create a java project Name &ndash; ChainProject.</p>
<p style="text-align: justify;">File - &gt;New -&gt; Java Project -&gt; Give the project Name -&gt; Finish</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp;2.Add all the above mentioned jar in class path.</p>
<p style="text-align: justify;">Right Click on the project -&gt; Build Path -&gt; Configure Build Path -&gt; Select Library Tab -&gt; Add external Jars -&gt; Select the above mentioned jars -&gt; Apply -&gt; Ok</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp;3.Create a package under the src , name com.test</p>
<p style="text-align: justify;">Right Click on the src -&gt; New -&gt; Package -&gt; Finish</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp;4.Create the below mentioned file and put to com.test folder.</p>
<p style="text-align: justify;">Right click on the package -&gt; New -&gt; Give the class Name -&gt; Finish.</p>
<p style="text-align: justify;">Add the below mentioned class name one by one.</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; 5. Run the main file &ldquo;ChainStart&rdquo; to execute and view the output.</p>
<p style="text-align: justify;">Right click on the ChainStart.java &agrave;Run As &agrave;Java Application&agrave;View the output in Console.</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><strong>1. chainconfig.xml</strong></p>
<p style="text-align: justify;">&lt;catalog &gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp; &lt;chain name=<em>"a-chain"</em>&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command className=<em>"chain.test.Command1"</em>/&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command className=<em>"chain.test.Command2"</em>/&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp; &lt;/chain&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp; &lt;command name=<em>"the-apache-request-parameter-mapper"</em></p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; className=<em>"org.apache.commons.chain.web.servlet.RequestParameterMapper"</em>/&gt;</p>
<p style="text-align: justify;">&lt;/catalog&gt;</p>
<p style="text-align: justify;"><strong>2. Command1.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> chain.test;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> Command1 <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute(Context ctx) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Add functionality for ACommand1</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("This is Command 1 ");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String <u>property</u> = (String) <u>ctx</u><u>.put(</u><u>"property"</u><u>,</u><u>"xyz"</u><u>)</u>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>; //The chain will resume</p>
<p style="text-align: justify;">&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>3. Command2.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> chain.test;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> Command2 <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute(Context ctx) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Add functionality for ACommand1</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("This is Command 2 ");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String property = (String) ctx.get("property");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Value from Command 1 in Command2: " + property);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>; //The chain will resume</p>
<p style="text-align: justify;">&nbsp;&nbsp; }</p>
<p style="text-align: justify;"><strong>4.YourContext.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> chain.test;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.impl.ContextBase;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> <u>YourContext</u> <strong>extends</strong> ContextBase {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>private</strong> String property;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> String getProperty() {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> property;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> setProperty(String string) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; property = string;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>5.ChainStart.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> chain.test;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Catalog;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.config.ConfigParser;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.impl.CatalogFactoryBase;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> ChainStart {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;<strong>private</strong> <strong>static</strong> <strong>final</strong> String <strong><em>CONFIG_FILE</em></strong> = "/chain/test/chain-config.xml";</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>private</strong> ConfigParser parser;</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>private</strong> Catalog catalog;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp; <strong>public</strong>&nbsp; ChainStart() {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parser = <strong>new</strong> ConfigParser();</p>
<p style="text-align: justify;">&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>public</strong> Catalog getCatalog() <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>if</strong> (catalog == <strong>null</strong>) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parser.parse(<strong>this</strong>.getClass().getResource(<strong><em>CONFIG_FILE</em></strong>));</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catalog = CatalogFactoryBase.<em>getInstance</em>().getCatalog();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> catalog;</p>
<p style="text-align: justify;">&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp; <strong>public</strong> <strong>static</strong> <strong>void</strong> main(String[] args) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainStart chain = <strong>new</strong> ChainStart();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalog catalog = chain.getCatalog();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Command command = catalog.getCommand("a-chain");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Context ctx = <strong>new</strong> YourContext();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; command.execute(ctx);</p>
<p style="text-align: justify;">&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>Output</strong> :</p>
<p style="text-align: justify;">This is Command 1</p>
<p style="text-align: justify;">This is Command 2</p>
<p style="text-align: justify;">Value from Command 1 in Command2: xyz</p>
<h3>Single command Chains &amp; Chains with nested commands</h3>
<p style="text-align: justify;">If you want to execute a single command rather than a chain of commands, then you can define the chain-config.xml file as bellow.</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; 1. For chain of commands ,pass the chain name in command :</p>
<p style="text-align: justify;">Command command = catalog.getCommand("<em>MyFlow</em>");</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; 2. For single command ,pass the command name only in command :</p>
<p style="text-align: justify;">Command command = catalog.getCommand("<em>MyFirstCommand</em>");</p>
<p style="text-align: justify;">&nbsp;&nbsp;<span style="color: #0000ff;">&lt;catalog&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;!-- Single command "chains" from CatalogBaseTestCase --&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command name=<em>"MyFirstCommand"</em> className=<em>"Command1"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command name=<em>"MySecondCommand"</em> className=<em>"Command2"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command name=<em>"MySecondCommand"</em> className=<em>"Command3"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;!-- Chains with nested commands --&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;chain name=<em>"MyFlow"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"1"</em> className=<em>"Command1"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"2"</em> className=<em>"Command2"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"3"</em> className=<em>"Command3"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/chain&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;/catalog&gt;</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;">Nested Chains &amp; Lookup Commands</h3>
<p style="text-align: justify;">Chain supports this concept through the use of nested chains. Since a chain is a command, you can replace a single use of a command with a reference to another chain. Commons Chain provides the general-use command&nbsp;<strong>LookupCommand</strong>&nbsp;for discovering and executing another chain.</p>
<p style="text-align: justify;">Look up a specified&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Command.html">Command</a>&nbsp;(which could also be a&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Chain.html">Chain</a>) in a&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Catalog.html">Catalog</a>, and delegate execution to it. If the delegated-to&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Command.html">Command</a>&nbsp;is also a&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Filter.html">Filter</a>, its&nbsp;postprocess()&nbsp;method will also be invoked at the appropriate time.</p>
<p style="text-align: justify;">The optional attribute controls how&nbsp;LookupCommand&nbsp;handles the case when the nested chain is not found in the specified catalog. If&nbsp;optional=true, then the process continues, even if the chain to execute cannot be found. Otherwise,&nbsp;LookupCommand&nbsp;throws an&nbsp;IllegalArgumentException, indicating that the command could not be found.</p>
<p style="text-align: justify;">Here's the chain configuration with this new flow added to the mix.</p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;catalog name=<em>"main-chain"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;chain name=<em>"sell-vehicle"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"command1"</em> className=<em>"com.test.nested.sample.Command1"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"command2"</em> className=<em>"com.test.nested.sample.Command2"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"command3"</em> className=<em>"com.test.nested.sample.Command3"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command className=<em>"org.apache.commons.chain.generic.LookupCommand"</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catalogName=<em>" main-chain"</em> name=<em>"lookup-chain"</em> optional=<em>"true"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"command5"</em> className=<em>"com.test.nested.sample.Command5"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/chain&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;chain name=<em>"lookup-chain"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;command id=<em>"command4"</em> className=<em>"com.test.nested.sample.command4"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/chain&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;/catalog&gt;</span></p>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;">Remove Context in Chains</h3>
<p style="text-align: justify;">Remove any context attribute using remove(). That context value will not be available in the chain anymore.</p>
<p style="text-align: justify;">&nbsp;public boolean execute(Context context) throws Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; context.remove("Context Name","Context Value");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;</p>
<p style="text-align: justify;">}</p>
<h3 style="text-align: justify;">Filter for exception handling in Chains</h3>
<p style="text-align: justify;">A&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Filter.html">Filter</a>&nbsp;is a specialized&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Command.html">Command</a>&nbsp;that also expects the&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Chain.html">Chain</a>&nbsp;that is executing it to call the&nbsp;postprocess()&nbsp;method if it called the&nbsp;execute()&nbsp;method. This promise must be fulfilled in spite of any possible exceptions thrown by the&nbsp;execute()&nbsp;method of this&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Command.html">Command</a>, or any subsequent&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Command.html">Command</a>&nbsp;whose execute()&nbsp;method was called. The owning&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Chain.html">Chain</a>&nbsp;must call the&nbsp;postprocess()&nbsp;method of each&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Filter.html">Filter</a>&nbsp;in a&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Chain.html">Chain</a>&nbsp;in reverse order of the invocation of their execute()&nbsp;methods.</p>
<p style="text-align: justify;">The executed command in the example above is a chain, which, in turn, executes the underlying commands as configured. As soon as a command returns true or whenever an exception occurs, the chain's execution stops. If exception handling within the chain is needed, the Chain framework offers the interface&nbsp;Filter. From this interface, the&nbsp;postprocess()&nbsp;method is invoked whenever an exception is thrown in the chain.</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">&nbsp;public class CommandExceptionHandler implements Filter {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; public boolean execute(Context context) throws Exception {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println("Filter.execute() called.");</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return false;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; }</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp;public boolean postprocess(Context context, Exception exception) {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (exception == null) return false;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println("Exception "&nbsp;&nbsp; + exception.getMessage()&nbsp;&nbsp;&nbsp; + " occurred.");</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return true;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="text-align: justify;">&nbsp; }</p>
<p style="text-align: justify;"><strong>There are three ways of ending a command chain:</strong></p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>A command returns&nbsp;true&nbsp;from its execute method.</li>
<li>The end of the chain is reached.</li>
<li>A command throws an exception.</li>
</ol>
<p style="text-align: justify;">A command should return&nbsp;true&nbsp;if the chain has completely handled the process. This notion is the basis of the Chain of Responsibility. Processing is handed off from command to command, until a command handles the command. If no process returns&nbsp;true, before reaching the end of the command sequence, the chain is assumed to have completed normally.</p>
<p style="text-align: justify;">A chain ends abnormally when any exception is thrown by a command. With Commons Chain, if a command throws an exception, the chain is broken. The exception, be it a runtime exception or application exception, will bubble up to the original caller of the chain. But many applications need explicit exception handling that is defined external to any commands. Commons Chain provides a facility for this using the&nbsp;Filter&nbsp;interface.&nbsp;Filter&nbsp;extends&nbsp;Command, adding a&nbsp;postprocess&nbsp;method.</p>
<p style="text-align: justify;">boolean <a href="https://commons.apache.org/proper/commons-chain/apidocs/src-html/org/apache/commons/chain/Filter.html#line.65">postprocess</a>(<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Context.html">Context</a>&nbsp;context,<a href="http://java.sun.com/j2se/1.4.2/docs/api/java/lang/Exception.html?is-external=true">Exception</a>&nbsp;exception) - execute any cleanup activities, such as releasing resources that were acquired during the&nbsp;execute()&nbsp;method of this&nbsp;<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Filter.html">Filter</a>&nbsp;instance.</p>
<p style="text-align: justify;">Commons Chain guarantees that the&nbsp;postprocess&nbsp;method will be called if the&nbsp;Filter's execute method is called, regardless of any thrown exceptions. Like servlet filters, Chain&nbsp;Filters are executed in the order that they appear in the command sequence. Likewise, each&nbsp;Filter's&nbsp;postprocess&nbsp;method is called in reverse order. You can use this feature of Chain to implement exception handlers. Here's a&nbsp;Filter&nbsp;that traps exceptions that may occur in the sample chain.</p>
<p style="text-align: justify;">The&nbsp;Filter's&nbsp;execute&nbsp;method is called in sequence. However, the&nbsp;postprocess&nbsp;method is not called until the chain reaches its end or a command throws an exception. If an exception was raised, then the&nbsp;postprocess&nbsp;method handles the exception and returns&nbsp;true, indicating that the exception was handled. The chain does terminate at this point, but the exception is essentially caught and does not propagate further. If the&nbsp;postprocess&nbsp;method returns&nbsp;false, the exception bubbles up, causing abnormal termination of the chain.</p>
<h3>Example 2 : Example of adding Filter for Exception Handling in Chains using Java Program.</h3>
<p style="text-align: justify;"><strong>Requirement :</strong></p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>IDE used : Eclipse</li>
<li>Java version used : 1.8</li>
<li>Above mentioned Jars.</li>
</ol>
<p style="text-align: justify;"><strong>Steps to create &amp; execute the project :</strong></p>
<ol style="list-style-type: lower-roman; text-align: justify;">
<li>Create a java project Name &ndash; Spring_Chain_Filter.</li>
<li>Add all the above mentioned jar in class path.</li>
<li>Create a package under the src , name - com.rs.filter.sample</li>
<li>Create the below mentioned file and put to com.rs.filter.sample folder.</li>
<li>Run the main file &ldquo;ChainDriver&rdquo; to execute and view the output.</li>
</ol>
<p style="text-align: justify;"><strong>&nbsp;1.Chainconfig.xml</strong></p>
<p style="text-align: justify;">&lt;catalog&gt;</p>
<p style="text-align: justify;">&lt;chain name=<em>"main-chain"</em>&gt;</p>
<p style="text-align: justify;">&nbsp; &lt;command&nbsp;&nbsp; id=<em>"ExceptionHandler"</em></p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp; className =<em>"com.rs.filter.sample.ChainExceptionHandler"</em>/&gt;</p>
<p style="text-align: justify;">&nbsp; &lt;command&nbsp;&nbsp; id=<em>"GetCommandInfo"</em> className=<em>"com.rs.filter.sample.GetCommandInfo"</em>/&gt;</p>
<p style="text-align: justify;">&lt;/chain&gt;</p>
<p style="text-align: justify;">&lt;/catalog&gt;</p>
<p style="text-align: justify;"><strong>2.GetCommandInfo.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.rs.filter.sample;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> GetCommandInfo <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute(Context ctx) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Get command info");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>3.ChainExceptionHandler&nbsp;java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.rs.filter.sample;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Filter;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> ChainExceptionHandler <strong>implements</strong> Filter {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute(Context context) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Filter.execute() called.");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> postprocess(Context context,Exception exception) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>if</strong> (exception == <strong>null</strong>) <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Exception " + exception.getMessage() + " occurred.");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>true</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>4.ChainDriver.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.rs.filter.sample;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Catalog;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.config.ConfigParser;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.impl.CatalogFactoryBase;</p>
<p style="text-align: justify;"><strong>import</strong> com.jadecove.chain.sample.SellVehicleContext;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> ChainDriver {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> <strong>static</strong> <strong>final</strong> String <strong><em>CONFIG_FILE</em></strong> = "/com/rs/filter/sample/chain-config.xml";</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> ConfigParser parser;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> Catalog catalog;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> ChainDriver() {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parser = <strong>new</strong> ConfigParser();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> Catalog getCatalog() <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>if</strong> (catalog == <strong>null</strong>) {&nbsp; &nbsp; &nbsp; &nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; parser.parse(<strong>this</strong>.getClass().getResource(<strong><em>CONFIG_FILE</em></strong>));&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catalog = CatalogFactoryBase.<em>getInstance</em>().getCatalog();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> catalog;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>static</strong> <strong>void</strong> main(String[] args) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainDriver loader = <strong>new</strong> ChainDriver();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalog sampleCatalog = loader.getCatalog();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Command command = sampleCatalog.getCommand("main-chain");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Context ctx = <strong>new</strong> SellVehicleContext();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; command.execute(ctx);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>Output :</strong></p>
<p style="text-align: justify;">Filter.execute() called.</p>
<p style="text-align: justify;">Get command info</p>
<h2 style="text-align: justify;"><strong>Apache commons chain in Spring framework</strong></h2>
<p style="text-align: justify;">&nbsp;So , you are now quite familiar with how the chain of commands actually works .Now , let us come to our main point of discussion that is the integration of&nbsp; Apache Commons Chains with the Spring framework. Apache APIs do make it simpler to configure, implement and execute multiple Chains of Responsibilities using spring framework. We will utilize the power that Apache offers and make it Spring friendly. Here configuring the chain is quite different, as we are using Spring Framework , because instead of relying on Apache way to configure chains, to make it consistent with all other application beans (classes) we&rsquo;ll keep chain(s) configuration in Spring.</p>
<h4 style="text-align: justify;">Explanation of the key interfaces of Apache commons chain in Spring framework</h4>
<p style="text-align: justify;"><strong>Step 1: A chain-config.xml file</strong></p>
<p style="text-align: justify;">The chain-config.xml file is somewhat different from the previously discussed chain-config.xml file. Here Spring framework giving us the reliability to use Apache&rsquo;s bean org.apache.commons.chain.impl.ChainBase. So, instead of catalog we will use this spring bean configuration file , that will allows us to configure the chain.</p>
<p style="text-align: justify;">Here the chain &ldquo;runchain&rdquo; is configured as &ldquo;org.apache.commons.chain.impl.ChainBase&rdquo;, and have two Command classes, that implement &ldquo;org.apache.commons.chain.Command&rdquo; interface, wired in.</p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;?xml version="1.0" encoding="UTF-8"?&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;beans xmlns="http://www.springframework.org/schema/beans"</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:util="http://www.springframework.org/schema/util"</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsi:schemaLocation="http://www.springframework.org/schema/beans</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">http://www.springframework.org/schema/beans/spring-beans-2.5.xsd</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">http://www.springframework.org/schema/util</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">http://www.springframework.org/schema/util/spring-util-2.5.xsd"&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name="runchain" class="org.apache.commons.chain.impl.ChainBase"&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;util:list&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean="Command1" /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean="Command2" /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/util:list&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/constructor-arg&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name="Command1" class="com.chain.command.Command1"&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&lt;constructor-arg value="Command1...." /&gt;&nbsp; </strong></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;property name="message1" value =" Command1&hellip;"&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/property&gt;</strong></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name="Command2" class="com.chain.command.Command2"&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&lt;constructor-arg value="Command2....." /&gt; </strong></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;property name="message2" value =" Command2&hellip;."&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/property&gt;</strong></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean id="chainRunner" class="com.chain.command.ChainRunner" /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;/beans&gt;</span></p>
<p style="text-align: justify;">The best practice is to keep Commands either stateless, or, if they have to have a state &ndash; immutable. If this practice is followed, these Commands can be safely reused throughout many chains (or even as stand-alone utilities). That is the reason, in configuration above, parameters are injected at Command&rsquo;s creation time via constructor injection.</p>
<p style="text-align: justify;">Parameters can be injected either by <strong>Constructor injection</strong> or by <strong>Setter injection</strong>. Setter injection overrides the constructor injection. If we use both constructor and setter injection at the same time , IOC container will use the setter injection. So, better to use any one of them.</p>
<p style="text-align: justify;"><strong>Step 2</strong> . <strong>An </strong><strong>implementation of</strong><strong> a command</strong></p>
<p style="text-align: justify;">As already discussed in previous, chain of commands need Command classes for sequential flow of execution. This class inherits Command class and overrides execute method. &nbsp;In the example given bellow both the constructor and the setter injection are shown , but you need to use any one of them.</p>
<p style="text-align: justify;">public class Command1 implements Command {</p>
<p style="text-align: justify;">private String message1;</p>
<p style="text-align: justify;">//using constructor injection</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public Command1(String message1) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; super();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.message1 = message1;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">//using setter injection</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public String getMessage1() {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return message1;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void setMessage1(String message1) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.message1 = message1;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public boolean execute( Context context ) throws Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.err.println( message1 );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>Step 3 : </strong><strong>An implementation of interface BeanFactoryAware </strong></p>
<p style="text-align: justify;">If a bean in spring implements BeanFactoryAware then that bean has to implement a method that is&nbsp;setBeanFactory. And when that bean is loaded in spring container, setBeanFactory is called. BeanFactoryAware belongs to the package org.springframework.beans.factory. BeanFactoryAware awares the bean for its BeanFactory.&nbsp;</p>
<p style="text-align: justify;">By implementing Spring&rsquo;s &ldquo;BeanFactoryAware&rdquo; interface, at runtime ChainRunner will have a reference to a &ldquo;beanFactory&rdquo; which it is going to use to obtain a reference to the requested chain via &ldquo;createChain&rdquo; method.</p>
<p style="text-align: justify;">&ldquo;ChainRunner&rdquo; has an entry point which is a &ldquo;runChain&rdquo; method, that executes a chain by chain name (bean name in configuration file). For example, in the configuration shown above &ldquo;runchain&rdquo; name can be provided.</p>
<p style="text-align: justify;">It would ideally need to use a couple of custom runtime exceptions: e.g. ChainNotFoundException, IsNotChainException and ChainExecutionException, but we&rsquo;ll keep it short here for clarity.</p>
<p style="text-align: justify;">Alternatively, to strong type chains a bit, &ldquo;ChainRunner&rdquo; could take a Map of chains with keys as chain names, and corresponding &ldquo;ChainBase&rdquo; chain objects as values.</p>
<p style="text-align: justify;">&ldquo;ChainRunner&rdquo; is pretty much everything that is needed in order to configure an Apache chain in Spring.</p>
<p style="text-align: justify;">public class ChainRunner implements BeanFactoryAware {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; private BeanFactory beanFactory;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void runChain( String chainName ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;createChain ( chainName ).execute( new ContextBase() );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catch ( Exception exc ) {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;throw new RuntimeException(&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"Chain \"" + chainName + "\": Execution failed.", exc );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public void setBeanFactory( BeanFactory beanFactory ) throws BeansException&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this.beanFactory = beanFactory;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; protected ChainBase createChain( String chainName ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ( ChainBase ) this.beanFactory.getBean( chainName );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;"><strong>Step 4 : </strong>&nbsp;<strong>The execution of a chain</strong></p>
<p style="text-align: justify;">Now the execution of chain of commands can be done using the below code&nbsp; . Here we need to create the chainRunner object to pass the factory and the chain name to execute the chain.</p>
<p style="text-align: justify;">The chain-config.xml can be loaded from anywhere like classpath location or&nbsp; from your local.</p>
<ol style="text-align: justify; list-style-type: lower-roman;">
<li><strong>ClassPathXmlApplicationContext:</strong> For standalone java applications using XML based configuration.</li>
<li><strong>FileSystemXmlApplicationContext:</strong> Similar to ClassPathXmlApplicationContext except that the xml configuration file can be loaded from anywhere in the file system.</li>
</ol>
<p style="text-align: justify;">public class ChainDriver {</p>
<p style="text-align: justify;">&nbsp; public static void main(String[] args) throws Exception {</p>
<p style="text-align: justify;">&nbsp; System.out.println("start......");</p>
<p style="text-align: justify;">&nbsp;ApplicationContext factory = new ClassPathXmlApplicationContext("/com/chain/command/chain-config.xml");</p>
<p style="text-align: justify;">// ApplicationContext factory = new FileSystemXmlApplicationContext ("C:\\Users\\niveditam\\Desktop\\chain-config.xml");&nbsp;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ChainRunner chainRunner = new ChainRunner();</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;chainRunner.setBeanFactory(factory);</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;chainRunner.runChain("runchain");</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;System.out.println("end.......");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;">&nbsp;<strong>Step 5 : Passing value in Chain using ContextBase</strong></p>
<p style="text-align: justify;"><strong>&nbsp;</strong>As discussed in previous ,ContextBase initialize the contents of this&nbsp;<a href="http://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Context.html">Context</a>&nbsp;by copying the values from the specified&nbsp;Map. Any keys in&nbsp;map&nbsp;that correspond to local properties will cause the setter method for that property to be called. &nbsp;</p>
<p style="text-align: justify;">In addition to the minimal functionality required by the&nbsp;<a href="http://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Context.html">Context</a>&nbsp;interface, this class implements the recommended support for&nbsp;<em>Attribute-Property Transparency</em>. This is implemented by analysing the available JavaBeans properties of this class (or its subclass), exposes them as key-value pairs in the&nbsp;Map, with the key being the name of the property itself.</p>
<p style="text-align: justify;"><strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; public boolean runChain( String chainName) {&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Context context = new ContextBase();</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;context.put("username", &ldquo;Nivedita&rdquo;);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;context.put("address1", &ldquo;Kolkata&rdquo;);</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;createChain ( chainName ).execute( context );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catch ( Exception ex) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ex.printStackTrace();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">Once, this context object is passed in the chain , all values will be available in all the Command classes through context.get() .</p>
<h4 style="text-align: justify;">Mandatory Jars needed to execute the Apache chain-of-commands code with Spring Framework :</h4>
<p>All previously mentioned Jars for Apache Common Chains.</p>
<ol style="list-style-type: lower-roman;">
<li>Spring Jars &ndash; You don&rsquo;t need to add all the Spring Jars to execute this code . Adding these jar will be enough.</li>
<li>Spring-beans</li>
<li>Spring-context</li>
<li>Spring-core</li>
<li>Spring expression</li>
<li>For testing through JUnit (Optional).</li>
<li>Juint</li>
<li>Spring-test</li>
<li>Spring-aop</li>
<li>Hamcrest-all</li>
</ol>
<h3 style="text-align: justify;">Example 3 : Basic example of Apache commons chain using Spring framework.</h3>
<p style="text-align: justify;"><strong>&nbsp;</strong></p>
<p style="text-align: justify;"><strong>Requirement:</strong></p>
<ol style="text-align: justify; list-style-type: lower-roman;">
<li>IDE used : Eclipse</li>
<li>Java version used : 1.8</li>
<li>Spring version used : 4.2</li>
<li>Above mentioned Jars.</li>
</ol>
<p style="text-align: justify;"><strong>Steps to create &amp; execute the project:</strong></p>
<ol style="list-style-type: lower-roman;">
<li>Create a java project Name &ndash; Spring_Chain.</li>
<li>Add all the above mentioned jar in class path.</li>
<li>Create a package under the src , name - com.chain.command</li>
<li>Create the below mentioned file and put to com.chain.command folder.</li>
<li>Run the main file &ldquo;ChainDriver&rdquo; to execute and view the output.</li>
</ol>
<p style="text-align: justify;"><strong>&nbsp;1.&nbsp;</strong><strong>Chain-config.xml</strong></p>
<p style="text-align: justify;">&lt;?xml version=<em>"1.0"</em> encoding=<em>"UTF-8"</em>?&gt;</p>
<p style="text-align: justify;">&lt;beans xmlns=<em>"http://www.springframework.org/schema/beans"</em></p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xmlns:xsi=<em>"http://www.w3.org/2001/XMLSchema-instance"</em> xmlns:util=<em>"http://www.springframework.org/schema/util"</em></p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsi:schemaLocation=<em>"http://www.springframework.org/schema/beans</em></p>
<p style="text-align: justify;"><em>http://www.springframework.org/schema/beans/spring-beans-2.5.xsd</em></p>
<p style="text-align: justify;"><em>http://www.springframework.org/schema/util</em></p>
<p style="text-align: justify;"><em>http://www.springframework.org/schema/util/spring-util-2.5.xsd"</em>&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"runchain"</em> class=<em>"org.apache.commons.chain.impl.ChainBase"</em>&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;util:list&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean=<em>"Command1"</em> /&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean=<em>"Command2"</em> /&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/util:list&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/constructor-arg&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"Command1"</em> class=<em>"com.chain.command.Command1"</em>&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg value=<em>"Command1...."</em> /&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"Command2"</em> class=<em>"com.chain.command.Command2"</em>&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg value=<em>"Command2....."</em> /&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean id=<em>"chainRunner"</em> class=<em>"com.chain.command.ChainRunner"</em> /&gt;</p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">&lt;/beans&gt;</p>
<p style="text-align: justify;"><strong>&nbsp;2.Command1.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> Command1 <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> String message1;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> Command1(String message1) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>super</strong>();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.message1 = message1;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute( Context context ) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>err</em></strong>.println( message1 );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>3.Command2.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> Command2 <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> String message2;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> Command2(String message2) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>super</strong>();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.message2 = message2;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute( Context context ) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>err</em></strong>.println( message2 );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>4.ChainDriver&nbsp;java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.command;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.springframework.context.ApplicationContext;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.context.support.ClassPathXmlApplicationContext;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> ChainDriver {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>static</strong> <strong>void</strong> main(String[] args) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Chain start......");</p>
<p style="text-align: justify;">ApplicationContext factory =&nbsp; <strong>new</strong> ClassPathXmlApplicationContext ("/com/chain/command/chain-config.xml");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainRunner chainRunner = <strong>new</strong> ChainRunner();</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chainRunner.setBeanFactory(factory);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chainRunner.runChain("runchain");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Chain end.......");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>5.ChainTest.java (Optional)</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.command;</p>
<p style="text-align: justify;"><strong>import</strong> javax.annotation.Resource;</p>
<p style="text-align: justify;"><strong>import</strong> org.junit.Test;</p>
<p style="text-align: justify;"><strong>import</strong> org.junit.runner.RunWith;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.test.context.ContextConfiguration;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.test.context.junit4.SpringJUnit4ClassRunner;</p>
<p style="text-align: justify;">&nbsp;@RunWith(SpringJUnit4ClassRunner.<strong>class</strong> )</p>
<p style="text-align: justify;">@ContextConfiguration( locations={ "/com/chain/command/chain-config.xml"} )</p>
<p style="text-align: justify;"><strong>public</strong> <strong>class</strong> ChainTest {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @Resource</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainRunner chainRunner;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @Test</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> driveTheChain() {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Starting up...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Ok]");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chainRunner.runChain( "runchain" );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("Finised...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [Ok]");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;}</p>
<p style="text-align: justify;"><strong>Output :</strong></p>
<p style="text-align: justify;">Chain start......</p>
<p style="text-align: justify;">Command1....</p>
<p style="text-align: justify;">Command2.....</p>
<p style="text-align: justify;">Chain end.......</p>
<p style="text-align: justify;">&nbsp;</p>
<h2 style="text-align: justify;">Apache Commons Chain in Spring MVC Framework</h2>
<p style="text-align: justify;">&nbsp;Using the Apache Commons chain in Spring MVC Framework is quite similar to the previously discussed Apache Commons chain in spring framework. There is no such huge difference in Apache Commons Chain architecture or configuration except the Spring Mvc Configuration.</p>
<p style="text-align: justify;"><strong>Controller</strong> :</p>
<p style="text-align: justify;">@Controller&nbsp;is a specific type of component, used in MVC applications and mostly used with RequestMapping annotation.</p>
<p style="text-align: justify;">Many applications use implementations of the Controller pattern to field user requests.&nbsp;A &nbsp;controller as a component that "interacts with a client, controlling and managing the handling of each request." .Often, an implementation of the Controller pattern will in turn use the Command pattern or Chain of Command pattern.</p>
<p style="text-align: justify;">In controller we will write a method that will map to a url , by this url the execution will be start up.</p>
<p style="text-align: justify;">@RequestMapping(value = "/ChainOfCommands/runchain", method = RequestMethod.<strong><em>GET</em></strong>, headers = "Accept=application/json")&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> runchain(HttpServletRequest request) {&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;"><strong>Service :</strong></p>
<p style="text-align: justify;">@Service&nbsp;is used to indicate that a class is a Service. Usually the business facade classes that provide some services are annotated with this.</p>
<p style="text-align: justify;">In service layer we will define the chainrunner class , that will responsible for executing the command classes.</p>
<p style="text-align: justify;">@Service</p>
<p style="text-align: justify;"><strong>public</strong> <strong>class</strong> ChainRunner <strong>implements</strong> BeanFactoryAware {</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>Commands Class :</strong></p>
<p style="text-align: justify;">Concept of Command classes is same as of previous. All the Command Classes should be kept in a different package for better practice.</p>
<p style="text-align: justify;"><strong>Chain-Config.xml:</strong></p>
<p style="text-align: justify;">Concept of Command classes is same as of previous.</p>
<p style="text-align: justify;">So, we need to:</p>
<ol style="text-align: justify; list-style-type: lower-roman;">
<li>Create a Controller.</li>
<li>Add a Handler for our Request to the Controller.</li>
<li>Create a Request and pass it to the Controller.</li>
<li>Create a Chain service that will do all the business implementation.</li>
<li>Create Sequential execution of Chain of commands</li>
<li>Confirm that the Request returns the expected Response.</li>
</ol>
<img src="img/chainofcommands.png"/>
<p style="text-align: justify;">Fig 2: Execution flow of Apache Commons Chain in Spring MVC Framework</p>
<h3 style="text-align: justify;">Example 4 : Creating a API using Apache Commons Chain in Spring MVC Framework .</h3>
<p style="text-align: justify;"><strong>&nbsp;</strong></p>
<p style="text-align: justify;"><strong>Requirement:</strong></p>
<ol style="text-align: justify; list-style-type: lower-roman;">
<li>IDE used : Eclipse</li>
<li>Java version used : 1.8</li>
<li>Spring version used : 4.2</li>
<li>Above mentioned Jars with the additional 2 jar &ndash; Spring-web &amp; Spring-webmvc</li>
</ol>
<p style="text-align: justify;"><strong>Steps to create &amp; execute the project:</strong></p>
<ol style="text-align: justify; list-style-type: lower-roman;">
<li>Create a dynamic java project Name &ndash; SpringMVC_chain.</li>
<li>Add all spring jar and the above mentioned jar in class path.</li>
<li>Add the Spring-servlet.xml &amp; web.xml under WEB-INF</li>
<li>Create a package under the src , name - com.chain.Controller, put the ChainController class there.</li>
<li>Create a package under the src , name - com.chain.Service. put the ChainRunnerService class there.</li>
<li>Create a package under the src , name com.chain.Command folder. Add all the Command classes.</li>
<li>Keep the chain-config.xml file under the src.</li>
<li>Start the server.</li>
<li>Hit the API url using browser/rest client.</li>
</ol>
<p style="text-align: justify;">The project structure should look like the below structure &ndash;</p>
<img src="img/chainofcommands2.png">
<p style="text-align: justify;"><strong>1.CommandA .java</strong></p>
<p style="text-align: justify;"><strong>&nbsp;</strong><strong>package</strong> com.chain.Commands;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> CommandA <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> String message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> CommandA( String message ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.message = message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute( Context context ) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("CommandA....."+message);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>2.CommandB.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.Commands;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> CommandB <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> String message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> CommandB( String message ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.message = message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute( Context context ) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>err</em></strong>.println("CommandB....."+message);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>3.CommandC .java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.Commands;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Command;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.Context;</p>
<p style="text-align: justify;">&nbsp;<strong>public</strong> <strong>class</strong> CommandC <strong>implements</strong> Command {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> String message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> CommandC( String message ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.message = message;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>boolean</strong> execute( Context context ) <strong>throws</strong> Exception {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("CommandC......"+message);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> <strong>false</strong>;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>4.ChainController.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.Controller;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> javax.servlet.http.HttpServletRequest;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.beans.factory.annotation.Autowired;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.context.ApplicationContext;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.context.support.ClassPathXmlApplicationContext;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.web.bind.annotation.RequestMapping;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.web.bind.annotation.RequestMethod;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.web.bind.annotation.RestController;</p>
<p style="text-align: justify;">&nbsp;<strong>import</strong> com.chain.Service.ChainRunnerService;</p>
<p style="text-align: justify;">&nbsp;@RestController</p>
<p style="text-align: justify;"><strong>public</strong> <strong>class</strong> ChainController {</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; @Autowired</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ChainRunnerService chainRunnerService;&nbsp; &nbsp; &nbsp;</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp;@RequestMapping(value = "/ChainOfCommands/runchain", method = RequestMethod.<strong><em>GET</em></strong>, headers = "Accept=application/json")&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> runchain(HttpServletRequest request) {&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("start......");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ApplicationContext factory =&nbsp; <strong>new</strong> ClassPathXmlApplicationContext("chain-config.xml");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chainRunnerService.setBeanFactory(factory);</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chainRunnerService.runChain("mvcchain");</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; System.<strong><em>out</em></strong>.println("end.......");</p>
<p style="text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>5.ChainRunnerService.java</strong></p>
<p style="text-align: justify;"><strong>package</strong> com.chain.Service;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.impl.ChainBase;</p>
<p style="text-align: justify;"><strong>import</strong> org.apache.commons.chain.impl.ContextBase;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.beans.BeansException;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.beans.factory.BeanFactory;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.beans.factory.BeanFactoryAware;</p>
<p style="text-align: justify;"><strong>import</strong> org.springframework.stereotype.Service;</p>
<p style="text-align: justify;">@Service</p>
<p style="text-align: justify;"><strong>public</strong> <strong>class</strong> ChainRunnerService <strong>implements</strong> BeanFactoryAware {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>private</strong> BeanFactory beanFactory;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> runChain( String chainName ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>try</strong> {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;createChain ( chainName ).execute( <strong>new</strong> ContextBase() );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>catch</strong> ( Exception exc ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>throw</strong> <strong>new</strong> RuntimeException(</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "Chain \"" + chainName + "\": Execution failed.", exc );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>public</strong> <strong>void</strong> setBeanFactory( BeanFactory beanFactory ) <strong>throws</strong> BeansException {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>this</strong>.beanFactory = beanFactory;</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>protected</strong> ChainBase createChain( String chainName ) {</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>return</strong> ( ChainBase ) <strong>this</strong>.beanFactory.getBean( chainName );</p>
<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>
<p style="text-align: justify;">}</p>
<p style="text-align: justify;"><strong>6.Chain-config.xml</strong></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;?xml version=<em>"1.0"</em> encoding=<em>"UTF-8"</em>?&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&lt;beans xmlns=<em>"http://www.springframework.org/schema/beans"</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xmlns:xsi=<em>"http://www.w3.org/2001/XMLSchema-instance"</em> xmlns:util=<em>"http://www.springframework.org/schema/util"</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsi:schemaLocation=<em>"http://www.springframework.org/schema/beans</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;"><em>http://www.springframework.org/schema/beans/spring-beans-2.5.xsd</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;"><em>http://www.springframework.org/schema/util</em></span></p>
<p style="text-align: justify;"><span style="color: #0000ff;"><em>http://www.springframework.org/schema/util/spring-util-2.5.xsd"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"mvcchain"</em> class=<em>"org.apache.commons.chain.impl.ChainBase"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;list&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean=<em>"commandA"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean=<em>"commandB"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ref bean=<em>"commandC"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/list&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/constructor-arg&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"commandA"</em> class=<em>"com.chain.Commands.CommandA"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg value=<em>"commandA"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"commandB"</em> class=<em>"com.chain.Commands.CommandB"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg value=<em>"commandB"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;&nbsp; &nbsp;&nbsp;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean name=<em>"commandC"</em> class=<em>"com.chain.Commands.CommandC"</em>&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;constructor-arg value=<em>"commandC"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/bean&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;bean id=<em>"chainRunner"</em> class=<em>"com.chain.Service.ChainRunnerService"</em> /&gt;</span></p>
<p style="text-align: justify;"><span style="color: #0000ff;">&nbsp;&lt;/beans&gt;</span></p>
<p style="text-align: justify;"><strong>Run &amp; Execution :</strong></p>
<p style="text-align: left;">Make a HTTP GET Request with <a href="http://localhost:8080/SpringMVCchain/ChainOfCommands/runchain">http://localhost:8080/SpringMVCchain/ChainOfCommands/runchain</a></p>
<p style="text-align: justify;"><strong>Console Output :</strong></p>
<p style="text-align: justify;">start......</p>
<p style="text-align: justify;">&nbsp;CommandA.....commandA</p>
<p style="text-align: justify;">CommandB.....commandB</p>
<p style="text-align: justify;">CommandC......commandC</p>
<p style="text-align: justify;">end.......</p>
<h3 style="text-align: justify;">Limitation</h3>
<p style="text-align: justify;">Chain is not a full workflow system. It does not have sophisticated flow of control between branches of chains or looping. However, it is also easier to get started with than most workflow systems and you can easily refactor existing code to fit within it. Editing the XML file to change the sequence of commands or alter the parameters passed to a command is also well within the realm of what many end users can do themselves without minimal instruction.</p>
<p style="text-align: justify;"><strong>&nbsp;</strong></p>
<p style="text-align: justify;"><strong>******KEY NOTES******</strong></p>
<ul style="text-align: justify;">
<li>This framework, developed under the community umbrella of the<a href="http://jakarta.apache.org/commons"><strong>Jakarta Commons project</strong></a></li>
<li>Key package - <strong>apache.commons.chain</strong></li>
<li>Classes - <strong>Command, ContextBase, Filter</strong></li>
<li>Main classes &ndash; <strong>ContextBase</strong></li>
<li>Exception handling and post process &ndash; <strong>Filter</strong></li>
<li>Utility classes for loading - <strong>Catalog</strong>, <strong>config</strong>.<strong>ConfigParser</strong>, <strong>impl</strong>.<strong>CatalogFactoryBase</strong></li>
<li>Used as a glue to bind commands - <strong>ContextBase</strong></li>
<li>Implementations of<a href="https://commons.apache.org/proper/commons-chain/apidocs/org/apache/commons/chain/Context.html"><strong>Context</strong></a>&nbsp;must also implement all of the required and optional contracts of the&nbsp;<strong>util.Map</strong>&nbsp;interface.</li>
</ul>
<p style="text-align: justify;">&nbsp;</p>
<h3 style="text-align: justify;">Reference</h3>
<p style="text-align: justify;"><a href="http://commons.apache.org/proper/commons-chain/">http://commons.apache.org/proper/commons-chain/</a></p>
<p style="text-align: justify;"><a href="https://commons.apache.org/proper/commons-chain/apidocs/">https://commons.apache.org/proper/commons-chain/apidocs/</a></p>
<p style="text-align: justify;"><u>&nbsp;</u></p>
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">&nbsp;</p>
											 </div>
											 
											 
											 <div class="col-sm-4">
												  <div>
													<%@include file="blogpanel.jsp" %>
												 </div>
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