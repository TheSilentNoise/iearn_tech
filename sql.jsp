
	<section id="subjects" class="">
		
		<div class="text-center">
				<img src="img/sql.png" >
	    </div>
		

		<div class="col-sm-9">
			<!-- tab content -->
			<div class="tab-content">
				<div class="tab-pane active text-style" data-ng-show="id==$index" ng-repeat="x in content track by $index" id="tab{{$index}}">
					<h2>{{x.header}}</h2><hr>
					<div ng-bind-html="chooseHtmlElement"></div>
				</div>
			</div>

		</div>

	   <div class="col-sm-3 index">
	   <div class="text-center"><label>Index</label></div><hr/>
			<nav class="nav-sidebar">
				<ul class="nav tabs">
					<li data-ng-repeat="x in content track by $index">
					   <a href="tab{{$index}}" data-ng-click="showSection($index)" data-toggle="tab">{{x.header}}</a>
					</li>
				</ul>
			</nav>
		</div> 
		
	</section>



