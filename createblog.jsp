
<div class="row">
			<div class="col-sm-2">Blog Name</div>
			<div class="col-sm-10"><input type="text" class="form-control"></div>
			<br/><br/>
</div>


<div class="row">
			<div class="col-sm-2">Blog Description</div>
			<div class="col-sm-10"><textarea  class="form-control" cols="4"></textarea></div>
			
</div>

<div class="row">
<br/>
    <div id="wysihtml-editor-toolbar">
      <header>
        <ul class="commands">
          <li data-wysihtml-command="bold" title="Make text bold (CTRL + B)" class="command"></li>
          <li data-wysihtml-command="italic" title="Make text italic (CTRL + I)" class="command"></li>
          <li data-wysihtml-command="insertUnorderedList" title="Insert an unordered list" class="command"></li>
          <li data-wysihtml-command="insertOrderedList" title="Insert an ordered list" class="command"></li>
          <li data-wysihtml-command="createLink" title="Insert a link" class="command"></li>
          <li data-wysihtml-command="insertImage" title="Insert an image" class="command"></li>
          <li data-wysihtml-command="formatBlock" data-wysihtml-command-value="h1" title="Insert headline 1" class="command"></li>
          <li data-wysihtml-command="formatBlock" data-wysihtml-command-value="h2" title="Insert headline 2" class="command"></li>
          <li data-wysihtml-command-group="foreColor" class="fore-color" title="Color the selected text" class="command">
            <ul>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="silver"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="gray"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="maroon"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="red"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="purple"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="green"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="olive"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="navy"></li>
              <li data-wysihtml-command="foreColor" data-wysihtml-command-value="blue"></li>
            </ul>
          </li>
          <li data-wysihtml-command="insertSpeech" title="Insert speech" class="command"></li>
          <li data-wysihtml-action="change_view" title="Show HTML" class="action"></li>
        </ul>
      </header>
      <div data-wysihtml-dialog="createLink" style="display: none;">
        <label>Link:<input data-wysihtml-dialog-field="href" value="http://"></label>
        <a data-wysihtml-dialog-action="save">OK</a>&nbsp;<a data-wysihtml-dialog-action="cancel">Cancel</a>
      </div>

      <div data-wysihtml-dialog="insertImage" style="display: none;">
        <label>Image:<input data-wysihtml-dialog-field="src" value="http://" ></label>
        <a data-wysihtml-dialog-action="save">OK</a>&nbsp;<a data-wysihtml-dialog-action="cancel">Cancel</a>
      </div>
      
    </div>
    
</div>

	<div class="row">
	   
	      <textarea id="wysihtml-editor" spellcheck="false" wrap="off" autofocus placeholder="Enter something ...">
	
	      </textarea>
	   
	</div>    
   
   <div class="row">
   		 <button type="button" onClick="fun()" class="btn btn-success">Post</button>
   </div>
    
    
   
  </body>
</html>
