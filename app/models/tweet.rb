		<div class="panel">
  <ul>
	<% @espn.each do |scores|%>
	  <li><%=scores[:league].upcase%><br>
		Date:<%=scores[:game_date]%><br>
		Home:<%=scores[:home_team].upcase%>:<%=scores[:home_score]%><br>
		Visitors:<%=scores[:away_team].upcase%>:<%=scores[:away_score]%><br>
		Status:<%=scores[:status]%><br>
	<%end%>
  </ul>
</div>