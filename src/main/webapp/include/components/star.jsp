<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<% 
	String id = request.getParameter("id");
	int value = -1; 
	try {
		value = Integer.parseInt(request.getParameter("value"));
	} catch(Exception e) {	
	}
%>
<fieldset class="star-pane">
    <div class="flex-box">
        <div class="star">
            <input name="rating" id="<%= id %>10" type="radio" <%= (value == 10) ? "checked" : " "  %> >
            <label class="half-fill" for="<%= id %>10"></label>
            <input name="rating" id="<%= id %>9" type="radio" <%= (value == 9) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>9"></label>
        </div>
        <div class="star">
            <input name="rating" id="<%= id %>8" type="radio" <%= (value == 8) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>8"></label>
            <input name="rating" id="<%= id %>7" type="radio" <%= (value == 7) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>7"></label>
        </div>
        <div class="star">
            <input name="rating" id="<%= id %>6" type="radio" <%= (value == 6) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>6"></label>
            <input name="rating" id="<%= id %>5" type="radio" <%= (value == 5) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>5"></label>
        </div>
        <div class="star">
            <input name="rating" id="<%= id %>4" type="radio" <%= (value == 4) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>4"></label>
            <input name="rating" id="<%= id %>3" type="radio" <%= (value == 3) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>3"></label>
        </div>
        <div class="star">
            <input name="rating" id="<%= id %>2" type="radio" <%= (value == 2) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>2"></label>
            <input name="rating" id="<%= id %>1" type="radio" <%= (value == 1) ? "checked" : " "  %>>
            <label class="half-fill" for="<%= id %>1"></label>
        </div>
    </div>
</fieldset>