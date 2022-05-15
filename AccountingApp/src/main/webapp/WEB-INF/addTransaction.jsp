<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
         <%@include file="nav.html" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <html>

        <head>
            <title>Accounting App</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
               
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${account != null}">
                            <form action="updated.do" method="post">
                        </c:if>
                        <c:if test="${account == null}">
                            <form action="add.do" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${account != null}">
                                    Edit Transaction
                                </c:if>
                                <c:if test="${account == null}">
                                    Add New Transaction
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${account == null}">
                            
                            
                             <fieldset class="form-group">
                            <label>Product Number</label> <input type="text" value="<c:out value='${account.productNumber}' />" class="form-control" name="productNumber" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Description</label> <input type="text" value="<c:out value='${account.description}' />" class="form-control" name="description" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Quantity</label> <input type="number" value="<c:out value='${account.quantity}' />" class="form-control" name="quantity">
                        </fieldset>

                        
                        <fieldset class="form-group">
                            <label>Costs Of Sold Goods</label> <input type="number" value="<c:out value='${account.cogs}' />" class="form-control" name="cogs">
                        </fieldset>
                        
                         <fieldset class="form-group">
                            <label>Revenue</label> <input type="number" value="<c:out value='${account.revenue}' />" class="form-control" name="revenue">
                        </fieldset>
                        
                        
                        </c:if>
                        
                        <c:if test="${account != null }">
                         <input type="hidden" name="id" value="<c:out value='${account.id}' />" /> 
                        
                           <fieldset class="form-group">
                            <label>Product Number</label> <input type="text" value="<c:out value='${account.productNumber}' />" class="form-control" name="productNumber" required="required">
                        
                        
                          <fieldset class="form-group">
                            <label>Description</label> <input type="text" value="<c:out value='${account.description}' />" class="form-control" name="description" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Quantity</label> <input type="text" value="<c:out value='${account.quantity}' />" class="form-control" name="quantity">
                        </fieldset>
                        
                        
                        </c:if>
                           
                        
                        

                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>