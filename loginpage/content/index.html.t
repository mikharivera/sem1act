<% include header.html.t %>

<h1>login page</h1>
<form method="post" action="/custom" autocomplete="on">
  User Name:<input type="text" name="Uname" required><br>
  Password: <input type="password" name="pw" required><br>
  <input type="submit" value="Submit">
</form>

<% include footer.html.t %>