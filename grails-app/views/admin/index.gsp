<%--
  Created by IntelliJ IDEA.
  User: varun
  Date: 22/6/15
  Time: 7:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="rsconvent"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'styles.css')}" />
    <title></title>
</head>

<body>
<!-- /Header -->

<!-- Main -->
<div>
    <p>
    </p>
</div>

<div class="container">

    <!-- upper section -->
    <div class="row">
        <div class="col-sm-3">
            <!-- left -->
            <div class="pic">
                <a href="#"><img width="75%" src="${createLink(controller: 'home',action: 'dispPic',id: session.user.id)}"></a>
                <div class="text">
                    <h5><i class="glyphicon glyphicon-pencil"></i> Change image</h5>
                </div></div>
            <h5 class="centered">User Name</h5>
            <h3><i class="glyphicon glyphicon-briefcase"></i> Toolbox</h3>
            <hr>

            <ul class="nav nav-stacked">
                <li><g:link action="announce"><i class="glyphicon glyphicon-flash"></i> Announce</g:link></li>
                <!--<li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-link"></i> Links</a></li>-->
                <li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-list-alt"></i> Results</a></li>
                <li><a data-toggle="modal" href="#myModal"><i class="glyphicon glyphicon-bell"></i> Notifications</a></li>
                <li><a ><i class="glyphicon glyphicon-time"></i> Calender</a></li>
                <li><a><i class="glyphicon glyphicon-plus"></i> Upload notices</a></li>
                <li><g:link action="contentManage"><i class="glyphicon glyphicon-flash"></i>Content Management</g:link></li>

                <hr>

            </ul>
        </div><!-- /span-3 -->
        <div class="col-sm-9">

            <!-- column 2 -->
            <h3><i class="glyphicon glyphicon-dashboard"></i> Dashboard</h3>

            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-7">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>Add</h4></div>
                        <div class="panel-body">
                            <div class="list-group">
                                <span class="list-group-item"><g:link controller="admin" action="addClass"><i class="fa fa-fw fa-plus"></i>Class</g:link></span>
                                <span class="list-group-item">Mukul</span>
                                <span class="list-group-item">Varun</span>
                                <p></p>
                                <g:link action="approval" class="btn btn-primary" >See all pending requests</g:link>
                            </div>
                        </div>
                    </div>

                </div><!--/col-->

            <!--center-right-->
                <div class="col-md-5">

                    <ul class="nav nav-justified">
                        <li> <a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                        <!--<li><a href="#"><i class="glyphicon glyphicon-heart"></i></a></li>-->
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a><ul class="dropdown-menu" role="menu"><li><a href="#">1. Is there a way..</a></li><li><a href="#">2. Hello, admin. I would..</a></li><li><a href="#"><strong>All messages</strong></a></li></ul></li>
                        <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
                        <li><a title="Add Widget" data-toggle="modal" href="#myModal"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
                    </ul>

                    <hr>

                    <div >
                        <iframe src="https://www.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=rsconvent123%40gmail.com&amp;color=%231B887A&amp;ctz=Asia%2FCalcutta" style=" border-width:0 " width="100%" height="200 px" frameborder="0" scrolling="no"></iframe>
                    </div>
                    <hr>
                    <hr>
                    <div class="btn-group btn-group-justified">
                        <!--<a href="#" class="btn btn-info col-sm-3">
                    <i class="glyphicon glyphicon-plus"></i><br>
                    Service
                  </a>

                  <a href="#" class="btn btn-info col-sm-3">
                    <i class="glyphicon glyphicon-cog"></i><br>
                    Tools
                  </a>-->
                        <a href="#" class="btn btn-info col-sm-3">
                            <i class="glyphicon glyphicon-question-sign"></i><br>
                            Help
                        </a>
                    </div>

                </div><!--/col-span-6-->

            </div><!--/row-->
        </div><!--/col-span-9-->

    </div><!--/row-->
<!-- /upper section -->

<!-- lower section -->
    <div class="row">

        <div class="col-md-12">
            <hr>
            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">×</button>
                Please remember to <a href="#">Logout</a> for classified security.
            </div>
            <div class="col-md-4">
                <hr>
            </div>

            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">Title</h4>
                        </div>
                        <div class="modal-body">
                            <p>for adding modal</p>
                        </div>
                        <div class="modal-footer">

                            <a href="#" class="btn btn-primary">Save changes</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal" id="myModal1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title">Content management</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <ul class="nav nav-tabs" id="myTab">
                                    <li class="active"><a href="#slider-images" data-toggle="tab">Slider images</a></li>
                                    <li><a href="#content" data-toggle="tab">Content</a></li>

                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="slider-images">
                                        <h4><i class="glyphicon glyphicon-list"></i></h4>
                                        <p>Change the images</p>
                                        1<br>
                                        2<br>
                                        3
                                    </div>
                                    <div class="tab-pane" id="content">
                                        <h4><i class="glyphicon glyphicon-list"></i></h4>

                                        <p>
                                            change the content
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <!--/tabs-->

                        </div>
                        <div class="modal-footer">

                            <a href="#" class="btn btn-primary">Save changes</a>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dalog -->
            </div><!-- /.modal -->




        <!-- script references -->
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <!--<script src="ajax.js"></script>-->

        </div>
    </div>
</div>
</body>
</html>