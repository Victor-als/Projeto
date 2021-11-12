<%@ page language="java" import="java.sql.*" %>
<%
   //Cria as variaveis e armazena as informações digitadas pelo usuario
   String vnome  = request.getParameter("txtnome");
   String vemail = request.getParameter("txtemail");
   String vendereco = request.getParameter("txtend");
   int vcep = Integer.parseInt(request.getParameter("txtcep"));
   String vsenha = request.getParameter("txtsenha");
   
   
   //cria as variaveis para conectar com o banco de dados
   String banco = "dadosprojeto" ;
   String url = "jdbc:mysql://localhost:3306/" + banco;
   String usuario = "root" ;
   String senha  = "" ;

   String driver = "com.mysql.jdbc.Driver" ;

   //carrega o driver na memoria
   Class.forName(driver) ;

   //cria a variavel de conexao 
   Connection conexao ;

   //abre a conexao com o banco de dados
   conexao = DriverManager.getConnection(url,usuario,senha) ;

   // cria o objeto para executar o comando SQL
   Statement stm = conexao.createStatement() ;

   //cria o comando de Insert
   String sql = "insert into cliente (senha,nome,email,cep,endereco,codigo) values ('"+vsenha+"', '" +vnome +"' , '"+ vemail+"', "+vcep+", '"+vendereco+"', "+null+" )" ;

   //executa o comando sql
   stm.executeUpdate(sql) ;

   conexao.close();
   stm.close() ;

   out.print( "Dados gravados com sucesso, faça login" ) ;
   out.print( "<br/>  <br/>" ) ;
   out.print( " <a href='login.html'/>Login</a>" ) ;
   
%>


