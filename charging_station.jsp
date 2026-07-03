<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%@include file="header.jsp" %>
<div class="content-wrapper">
    <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"></h4>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Charging Station
                        </div>
                        <div class="panel-body">
                            <form role="form" action="charging_station_add_code.jsp" method="post">
                                
                                <div class="form-group">
                                    <label>Station Name</label>
                                    <input class="form-control" type="text" name="station_name" required/>
                                </div>
                                <div class="form-group">
                                    <label>Station Address</label>
                                    <textarea class="form-control" name="station_address" rows="5" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Station City</label>
                                    <input class="form-control" type="text" name="station_city" required/>
                                </div>
                                <div class="form-group">
                                    <label>Station Status</label>
                                    <input class="form-control" type="text" name="station_status" required/>
                                </div>
                                <div class="form-group">
                                    <label>Station Owner Name</label>
                                    <input class="form-control" type="text" name="station_owner_name" required/>
                                </div>
                                <div class="form-group">
                                    <label>Station Contact No</label>
                                    <input class="form-control" type="text" name="station_contact_no" required/>
                                </div>
                                <center><button type="submit" class="btn btn-info">Send</button></center>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
