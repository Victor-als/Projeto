<!DOCTYPE html>
<html lang ='pt-br'>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<title>Dulce Amor</title>
		<link rel="icon" type="image/jpg" href="imagens/icone.png"/>
		<link rel='stylesheet' href='css/encomenda.css'/>
		<script src='java script/javascript_home.js' defer></script>
	</head>
    <body>
        <div id="beneficios">
            <p>Entregamos em toda região de Guarulhos</p>
            <p> Todos os produtos com 5% de desconto no PIX</p>
            <p>Compras acima de 100 reais ganham brindes</p>
        </div>	
        <input type="checkbox" id="check">
        <label id="icone_menu" for="check"><img src='imagens/icones/menu.png'></label>
        <div class='barra_menu'>
            <nav id='itens_menu'>
                <a href='index.html' rel='prev'><div class='link'>Home</div></a>
						<a href='produtos.html' rel='next'><div class='link'>Produtos</div></a>
						<a href='consulta.jsp'><div class='link'>Encomendas</div></a>
						<a href='login.html'><div class='link'>Login</div></a>
						<a href=''><div class='link'>Fale Conosco</div></a>
            </nav>
        </div>
        <header>
            <div id='subheader'>
                <div id='logo'>
                    <picture>

                        <source media="(max-width:550px)" srcset="imagens/logo150px.jpg" type="image/jpg">

                        <source media="(max-width:768px)" srcset="imagens/logo200px.jpg" type="image/jpg">
                        
                        <img src='imagens/logo200px.jpg' alt='Logo Dulce Amor'>
                    </picture>
                </div>
                <label for='barra_pesquisa'></label>
                    <div id="barra_pesquisa">
                        <div id='frase'>
                            <h1>Adoçando a vida!</h1>		
                        </div> 
                        <form method="post">
                            <input type="text" placeholder=" faça uma busca ">
                            <button>	
                                <img src='imagens/icones/lupa26px.png'>
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                    </div>
                
                <div id="rede_social">
                    <br/>
                        <h2 align="center">Tire suas dúvidas</h2>
                    <br/>
                    <div id='icones_rede_social'>
                        <a href="https://www.instagram.com/dulceamor__ofc/" target="_blank">	
                        <img src='imagens/instal.png' height="35"></a>
                        <h2>|</h2>
                        <a href="https://api.whatsapp.com/message/3E2ZZUYJNA4QC1" target="_blank">	
                        <img src='imagens/wppl.png' height="35"></a>
                        <h2>|</h2>
                        <a href="" target="_blank">	
                        <img src='imagens/face.png' height="31"></a>
                    </div>
                    <div>
                        <br/>
                        <h3 align="center">Telefone: (11) 2532-5593</h3>
                        <br/>
                        <h3 align="center">Celular: (11) 96980-5573</h3>
                        <br/>
                 </div>
              </div>
            </div>
        </header>
        <section> 
            <div id='pedidos'>  
                <h2>Seus Pedidos</h2>
            </div>

            <div id='tabela'>     
                <%@page language="java" import="java.sql.*" %>
                <%
                //cria as variaveis para acessar o banco de dados 
                String banco = "dadosprojeto" ;
                String url = "jdbc:mysql://localhost:3306/" + banco;
                String usuario = "root" ;
                String senha = "" ;

                //driver para o banco Mysql
                String driver = "com.mysql.jdbc.Driver" ;

                //carregar driver na memoria
                Class.forName(driver) ;

                //criar variavel para conectar com o bando
                Connection conexao ;

                conexao = DriverManager.getConnection(url, usuario, senha) ;

                Statement stm = conexao.createStatement() ;

                String sql = "select nome_produto,data_entrega,quantidade,peso from pedidos" ;

                ResultSet dados ;

                dados = stm.executeQuery( sql ) ; 

                out.print("<table border='1'>");
                out.print("<tr>");
                    out.print("<th>Pedido</th>");
                    out.print("<th>Data</th>");
                    out.print("<th>Quantidade</th>");
                    out.print("<th>Peso</th>");
                out.print("</tr>");
                
                while( dados.next() )
                {
                    out.print("<tr>") ;
                    out.print("<td>");
                        out.print( dados.getString("nome_produto")  ) ;
                    out.print("</td>");

                    out.print("<td>") ;
                        out.print( dados.getString("data_entrega")  ) ;
                        out.print("</td>") ;

                    out.print("<td>") ;
                        out.print( dados.getString("quantidade")  ) ;
                        out.print("</td>") ;

                    out.print("<td>") ;
                        out.print( dados.getString("peso")  ) ;
                        out.print("</td>") ;
                    out.print("</tr>") ;
                }

                out.print("</table>");
                %>
            </div> 
        </section>  
        </body>
</html>