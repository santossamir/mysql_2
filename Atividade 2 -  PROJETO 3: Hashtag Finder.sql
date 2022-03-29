create table buscas(
	id_busca int primary key auto_increment,
    hastag varchar(50) not null,
    data_busca datetime
);

create table projeto(
	id_projeto int primary key auto_increment,
    sobre_projeto varbinary(1500) not null
);

create table equipe(
	id_colaborador int primary key auto_increment,
    nome varchar(50) not null,
    descricao varchar(200) not null,
    github varchar(50) not null,
    email varchar(50) not null,
    linkedin varchar(50) not null,
    foto_perfil varchar(100) not null
);

create table login(
	id int primary key auto_increment,
    email varchar(50),
    senha varchar(10)
);

insert into equipe(nome, descricao, github, email, linkedin, foto_perfil)
values("Daniel Denardi","M.e em Ciências da Linguagem, Eng. Elétrico e Psicólogo, aprimorando Desenvolvimento Web Full Stack, foco em React.","github.com/dandenardi","dan.denardi@gmail.com","linkedin.com/in/danieldenardi/","avatars.githubusercontent.com/u/84968799?v=4"),
("Erick Rosa","Esp. em Tradução de Inglês, Ldo. em História, aprimorando Desenvolvimento Web, foco em Front End.","github.com/RosaErick","erickpmotta@gmail.com","linkedin.com/in/erick-rosa-dev//","avatars.githubusercontent.com/u/49876146?v=4"),
("Luan Santos","Tec. em Multimídia, Dev. Jr. pioneiro com Bots no Discord, aprimorando Desenvolvimento Web Full Stack.","github.com/luandunas","luan@dunas.ga","linkedin.com/in/luandunas/","avatars.githubusercontent.com/u/39232355?v=4"),
("Samir Santos","M.e em Ciências da Educação, Ldo. em Biologia, aprimorando Desenvolvimento Web Full Stack.","github.com/santossamir","santossamir@hotmail.com","linkedin.com/in/samir-santos-88191519b/","avatars.githubusercontent.com/u/88064533?s=400&u=8f6446792691307a45761f7bb44c5deea72c4744&v=4");

select * from equipe;

insert into login(email, senha)
values("contato@newtab.academy","123456"); 

select * from login;

insert into projeto(sobre_projeto)
values(" Este projeto visa envolver as atuações de um Desenvolvedor Web Front End. Com isso, elaboramos uma página web responsiva para visualização de mensagens e imagens associados com a API do <i>Twitter</i>. Ele foi desenvolvido por quatro indivíduos, todos estudantes do curso de Desenvolvimento Web da 
<strong><a href='https://www.newtab.academy/' target='_blank' rel='noopener noreferrer'>Newtab Academy</a></strong>, uma escola de tecnologia especializada na formação profissional e empregabilidade na área de programação, em que foram utilizados os conhecimentos adquiridos nos módulos de HTML, CSS, Javascript
e React.<br><br> O projeto está distribuido em duas partes: as páginas acessíveis ao público e as páginas restritas. As acessíveis são a <i>Home</i>, com um campo de busca via hashtag e áreas para observar mensagens e imagens; e a <i>Sobre</i>, onde vemos uma breve explicação do projeto e apresentação dos envolvidos.
Nas restritas, temos a <i>Login</i>, com campo de e-mail, senha e botão de acesso; e a <i>Listagem de buscas</i>, que apresenta uma tabela com as hashtags, data e hora das publicações.");

select * from projeto;
