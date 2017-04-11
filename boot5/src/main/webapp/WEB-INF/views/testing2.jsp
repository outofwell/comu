<html>
<head>
    <title></title>
    <script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
	<script>
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
	
	</script>
</head>
<body>
<textarea name="sample" id="sample" rows="4" class="materialize-textarea" maxlength="300"></textarea>
												<div class="nav hide-on-med-and-down" style="margin:auto; text-align:center;">
														<button id="under">▼</button>
													<a class="next" href="#" style="margin:auto;">
													</a>
												</div>
									        	<textarea rows="10" name="file_ori" id="code" class="materialize-textarea" maxlength="300">${file.file_ori}</textarea>>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>
</body>
</html>


