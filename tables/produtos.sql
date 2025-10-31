create table produtos ( 
id int primary key auto_increment,
nome varchar(100) not null,
preco decimal(10,2) not null check (preco > 0),
estoque int default 0,
id_categoria int,
foreign key (id_categoria) references categorias(id)
);