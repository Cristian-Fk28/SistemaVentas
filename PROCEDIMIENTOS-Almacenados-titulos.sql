use pubs
go


 -- PROCEDIMIENTO PARA LISTAR TITULOS
if OBJECT_ID('spListarTitles')is not null
		drop proc spListarTitles
go
create proc spListarTitles
as
begin
	select * from titles
end
 go
 
 exec spListarTitles
 go






 use pubs
go


 -- PROCEDIMIENTO PARA AGREGAR AUTOR
 if OBJECT_ID('spAgregarTitles') is not null
	drop proc spAgregarTitles
go
	create proc spAgregarTitles
	@title_id varchar(6),@title varchar(80),@type char(12),@pub_id char(4),@price money,@advance money,@royalty int,@ytd_sales int,@notes varchar(200), @pubdate datetime
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if not exists(select title_id fROM titles where title_id=@title_id)
	--VALIDAR Q EL NOMBRE DE ESCUELA NO SE REPITA
		if NOT exists(select title from titles where title=@title)
			begin
			INSERT into titles VALUES(@title_id,@title,@type,@pub_id,@price,@advance,@royalty,@ytd_sales,@notes,@pubdate)
			Select CodError=1, Mensaje='TITULO AGREGADO CORRECTAMENTE'
			end
		else select CodError =0, Mensaje='ERROR: NOMBRE DE LIBRO EXISTE'
	else select CodError=0,Mensaje='ERROR: CODIGO DE TITULO DUPLICADO'

	end
	go
	

	exec spAgregarTitles 'BA10043','La toalla del mojado','business','1389','20.95','7000', '10','4333','Un historia comica cual nadie entiende','1991-06-12 00:00:00.000'
	
	go
	
	--PROCEDIMIENTO PARA ACTUALIZAR AUTOR
	 use pubs
go


if OBJECT_ID('spActualizarTitles') is not null
	drop proc spActualizarTitles
go
	create proc spActualizarTitles
	@title_id varchar(6),@title varchar(80),@type char(12),@pub_id char(4),@price money,@advance money,@royalty int,@ytd_sales int,@notes varchar(200), @pubdate datetime
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if exists(select title_id fROM titles where title_id=@title_id)
	--VALIDAR Q EL NOMBRE DE ESCUELA NO SE REPITA
		if NOT exists(select title from titles where title=@title)
			if exists(select pub_id from titles where pub_id=@pub_id)
			begin
			UPDATE titles SET title=@title, type=@type,pub_id=@pub_id,price=@price,advance=@advance,royalty=@royalty,ytd_sales=@ytd_sales,notes=@notes, @pubdate=@pubdate WHERE title_id=@title_id
			Select CodError=1, Mensaje='Autor ACTUALIZADO CORRECTAMENTE'
			end

			else select CodError =0, Mensaje='ERROR: PUBS_ID NO  EXISTE'
		else select CodError =0, Mensaje='ERROR: NOMBRE DE LIBRO EXISTE'
	else select CodError=0,Mensaje='ERROR: CODIGO DE TITULO DUPLICADO'

	end
	go



	exec spActualizarTitles'BA10043','La toalla del carrasco','business','1389','20.95','7000', '10','4333','Un historia comica cual nadie entiende','1991-06-12 00:00:00.000'
	go
	exec spListarTitles
	go	

	--PROCEDIMIENTO PARA ELIMINAR ESCUELA

	 use pubs
go
	if OBJECT_ID('spEliminarTitles') is not null
	drop proc spEliminarTitles
go
	create proc spEliminarTitles
	@title_id varchar(6)
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if  exists(select @title_id fROM titles where title_id=@title_id)
		
		begin
			delete from titles where	title_id=@title_id
			select CodError =1, Mensaje='TITULO ELIMINADO CORRECTAMENTE'
		end
		
	else select CodError=0,Mensaje='ERROR: CODIGO NO EXISTE'

	end
	go

	EXEC spEliminarTitles 'BA1004'
	GO
	EXEC spListarTitles


	--Procedimiento apra buscar AUTORES
		 use pubs
go
	if OBJECT_ID('spBuscarTitles') is not null
	drop proc spBuscarTitles
	go
	create proc spBuscarTitles
	@texto varchar(50), @Criterio Varchar(50)
	as
	begin
	--BUSCQUEDA EXACTA
	if(@Criterio='title_id')
	select title_id,title,type,pub_id,price,advance ,royalty,ytd_sales ,notes,pubdate  from titles where title_id=@texto
	
		--BUSQUEDA SENCITIVA PARA EL NOMRBE DE LA ESCUELA
		else if (@Criterio='title')
		select title_id,title,type,pub_id,price,advance ,royalty,ytd_sales ,notes,pubdate  from titles where title like @texto+'%'
	end 
	go

	exec spBuscarTitles 'LA','title'
	GO	
	EXEC spListarTitles
	exec spBuscarTitles 'BA1004','title_id'
	GO	
	EXEC spListarTitles