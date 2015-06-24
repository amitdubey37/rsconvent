<div class="modal fade" id="picEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" name="myModal1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background: #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <p></p>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="${createLink(controller: 'home',action: 'dispPic',id: msg.id)}" style="width: 200px;height: 200px">
                        </div>
                        <div class="col-md-0">
                            <g:uploadForm action="changePic">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Select Pic:</label>
                                        <input type="file" name="pic" id="class"/>
                                    </div>
                                </div><br>
                                <input type="submit" class="btn btn-primary" value="Upload"/>
                            </g:uploadForm>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>