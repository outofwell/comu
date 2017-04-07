<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<title>HiCu Testing</title>
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//under START=====
	$('#under').click(function(){
		jQuery.fn.extend({
			setCursorPosition: function(position){
			    if(this.length == 0) return this;
			    return $(this).setSelection(position, position);
			},

			setSelection: function(selectionStart, selectionEnd) {
			    if(this.length == 0) return this;
			    input = this[0];

			    if (input.createTextRange) {
			        var range = input.createTextRange();
			        range.collapse(true);
			        range.moveEnd('character', selectionEnd);
			        range.moveStart('character', selectionStart);
			        range.select();
			    } else if (input.setSelectionRange) {
			        input.focus();
			        input.setSelectionRange(selectionStart, selectionEnd);
			    }

			    return this;
			},

			focusEnd: function(){
			    this.setCursorPosition(this.val().length);
			            return this;
			},

			getCursorPosition: function() {
		        var el = $(this).get(0);
		        var pos = 0;
		        if('selectionStart' in el) {
		            pos = el.selectionStart;
		        } else if('selection' in document) {
		            el.focus();
		            var Sel = document.selection.createRange();
		            var SelLength = document.selection.createRange().text.length;
		            Sel.moveStart('character', -el.value.length);
		            pos = Sel.text.length - SelLength;
		        }
		        return pos;
		    },

		    insertAtCursor: function(myValue) {
		    	return this.each(function(i) {
				    if (document.selection) {
				      //For browsers like Internet Explorer
				      this.focus();
				      sel = document.selection.createRange();
				      sel.text = myValue;
				      this.focus();
				    }
				    else if (this.selectionStart || this.selectionStart == '0') {
				      //For browsers like Firefox and Webkit based
				      var startPos = this.selectionStart;
				      var endPos = this.selectionEnd;
				      var scrollTop = this.scrollTop;
				      this.value = this.value.substring(0, startPos) + myValue + 
	                                this.value.substring(endPos,this.value.length);
				      this.focus();
				      this.selectionStart = startPos + myValue.length;
				      this.selectionEnd = startPos + myValue.length;
				      this.scrollTop = scrollTop;
				    } else {
				      this.value += myValue;
				      this.focus();
				    }
			  	})
		    }
	    
		})
	var sample = $('#sample').val();
	var position = $("#code").getCursorPosition();
	$("#code").setCursorPosition(position);
	$("#code").insertAtCursor(sample);
	$('#sample').val('');
	});
	});
	//under END=====
	
	
	//커버 이미지 삽입
    $(function() {
        $("#imgInp").on('change', function(){
            readURL(this);
        });
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
                $('#imgView').attr('src', e.target.result);
            }
          reader.readAsDataURL(input.files[0]);
        }
    }
    
    //전체 파일 리스트 불러오기
    $(function(){
    	$("#load").on('click', function(){
    		$.ajax({
    			type : "get", 
    			url : "fileList", 
    			success : function(resp){

    				var msg="<table class='table' id='loadlist'><tr>";
    				
    				$.each(resp, function(index, item){
    					//img 주소 : 테스트용 임시 주소!!
    					msg+='<td class="btn btn-white"><a href="load?filenum='+item.filenum+'"><img src="resources/covers/'+item.cover_re+'" style="width:80px; height:80px; border-radius:5px;"></a><br>';
    					msg+=item.file_title+'</td>';
    					if((index+5) % 4 == 0){ 
    						msg+= "</tr><tr>"; 
    					}
    				});
    				
    				msg += "</tr><table>";
    				
    				$("#loader").html(msg);
    			}
    		});
    	});
    	
    });
    
    //파일 저장
    function save(){
    	var form = document.getElementById("form1");
    	form.action="save"; 
    	form.submit();
    }

</script>
<style>
#loader{
	margin: auto;
	width: 450px;
	height: 250px;
	overflow: auto;
}

#loadlist{
	text-align: center;
	padding: 5px;
	border : 1px lightgray;
	border-radius : 5px;
}

#loadlist td{
	text-align: center;
	padding: 10px;
	border : 1px lightgray;
	border-radius : 5px;
}
</style>
</head>

<body class="index-page">

<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('resources/assets/img/bg2.jpeg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">

			<form id="form1" runat="server" action="save" method="post" enctype="multipart/form-data">
	    	<div class="container">
			<input type="hidden" name="userid" value="${loginId}">
			<input type="hidden" name="file_type" value="comu">
	    		<div class="row">
					<div class="col-md-6">	<!-- 왼쪽 -->
						<h3>CODING</h3>
						<div class="row">
							<div class="col-md-10">
								<div class="form-group label-floating">
									<label class="control-label">Run Sample</label>
									<textarea class="form-control" rows="4" name="sample" id="sample"></textarea>
								</div>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary" onClick="return false;">▶</button>
								<button class="btn btn-primary" name="under" id="under" onClick="return false;">▼</button>
							</div>
						</div>
						<div class="form-group label-floating">
							<label class="control-label">Code</label>
								<textarea class="form-control" rows="10" name="file_ori" id="code">${file.file_ori}</textarea>
						</div>
						<div class="row">
							<div class="col-md-10">
								<div id="sliderRegular" class="slider"></div>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary" onClick="return false;">▶</button>
							</div>
						</div>
					</div>
					
			    	<div class="col-md-6">	<!-- 오른쪽 -->
			    	<h3>PLAY</h3>
<div><img src="http://placehold.it/450x250"></div>
			    	<hr>
			    		<div class="row">
							<div class="col-md-4">
							<!-- img 주소 : 테스트용 임시 주소!! -->
							<img id="imgView" src="resources/covers/${file.cover_re}" onERROR="this.src='resources/assets/img/robot.png'" style="width:100px; height:100px; border-radius:100px;">
								<label class="btn btn-primary btn-sm">
					                get Cover&hellip; <input type="file" style="display: none;" id="imgInp" name="upload" />
					            </label>
							</div>
							<div class="col-md-8">
								<div class="form-group">
		   							<div class="form-group label-floating">
										<label class="control-label">Title</label>
		   									<input type="text" class="form-control" name="file_title" value="${file.file_title}" /><br>
		   							</div>
		   		</form>
									<a href="#pablo" class="btn btn-primaru btn-primary" 
									data-toggle="modal" data-target="#list" id="load">Load</a>
									<button class="btn btn-primary" onclick="save()">Save</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</div>
	    <footer class="footer">
		    <div class="container">
		    </div>
		</footer>
	</div>
</div>

<!-- Modal Core -->
<div class="modal fade" id="list" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      	<div id="loader"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default btn-simple" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-info btn-simple">Save</button>
      </div>
    </div>
  </div>
</div>





<style>
	.main-raised {
		margin: -550px 30px 0px;
	}
</style>

</html>