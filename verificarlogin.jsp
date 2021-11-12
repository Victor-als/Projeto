<%@page language="java" import="java.sql.*" %>
	<%

	 String vemail = request.getParameter("txtemail");
	 String vsenha = request.getParameter("txtsenha");


	 //cria as variaveis para acessar o banco de dados 
	 String banco = "dadosprojeto" ;
	 String url = "jdbc:mysql://localhost:3306/" + banco;
	 String usuario = "root" ;
	 String senha = "" ;

	 //driver para o banco Mysql
	 String driver = "com.mysql.jdbc.Driver" ;

	 //carregar driver na memoria
	 Class.forName(driver) ;

	 //criar variavel para conectar com o banco
	 Connection conexao ;

	 conexao = DriverManager.getConnection(url, usuario, senha) ;

	 Statement stm = conexao.createStatement() ;


	 String sql = "SELECT * FROM cliente WHERE email= '" + vemail + "' and senha = '" + vsenha + "'" ;

	 ResultSet dados ;

	 dados = stm.executeQuery(sql) ;

	

	if(  dados.next() ) {
	 	session.setAttribute( "usuario" , dados.getString("email") ) ;
	 	response.sendRedirect("index.html");

	 } else {
		out.print("Login ou senha incorreto") ;   
	 }



	 conexao.close();
	 stm.close();
	%>
</body>
</html>