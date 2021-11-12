<%@ page language="java" import="java.sql.*" %>

<%

   //Cria as variaveis e armazena as informações digitadas pelo usuario
   String vpeso  = request.getParameter("peso");
   String ventregar = request.getParameter("entregar");
   int vquantidade = Integer.parseInt(request.getParameter("textquantidade"));
   String vdata = request.getParameter("data");
   String vproduto = request.getParameter("produto");
  
   
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
   String sql = "insert into pedidos (cod_cliente,cod_produto,peso,quantidade,entrega,data_entrega,nome_produto) values ("+1+" ,"+1+",'" +vpeso+"', "+ vquantidade +", '"+ ventregar +"' ,  '"+vdata +"' , '"+vproduto+"')" ;
	


   //executa o comando sql
   stm.executeUpdate(sql) ;

   conexao.close();
   stm.close() ;

   out.print( "Sua encomenda foi realizada" ) ;
   out.print( "<br/>  <br/>" ) ;
   out.print( "<a href='produtos.html'>Voltar</a>" ) ;


   
%>


