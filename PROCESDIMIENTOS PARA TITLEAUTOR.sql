use pubs
go
if OBJECT_ID('spListartitulosAutor')is not null
		drop proc spListartitulosAutor
go
create proc spListartitulosAutor
as
begin
	select * from titleauthor
end
 go
   exec spListarAutor
 go
 exec spListartitulosAutor
 go
  exec spListarTitles
 go
 -- PROCEDIMIENTO PARA AGREGAR AUTOR
 if OBJECT_ID('spAgregartitulosAutor') is not null
	drop proc spAgregartitulosAutor
go
	create proc spAgregartitulosAutor
	@au_id varchar(11),@title_id varchar(6),@au_ord tinyint ,@royaltyper int
	as
	begin
	--VALIDAR CLAVE PRIMARIA
		if NOT exists(select title_id from titleauthor where title_id=@title_id)
			begin
			INSERT into titleauthor VALUES(@au_id,@title_id,@au_ord,@royaltyper)
			Select CodError=1, Mensaje='TITULO AUTOR AGREGADO CORRECTAMENTE'
			end
		else select CodError =0, Mensaje='ERROR: Titulo Ya EXISTENTE PARA este AUTOR'
	end
	go
	
	exec spAgregartitulosAutor '267-41-2394','BU7832','2','400'
	go


	--PROCEDIMIENTO PARA ELIMINAR ESCUELA
	if OBJECT_ID('spEliminarTituloAutor') is not null
	drop proc spEliminarTituloAutor
go
	create proc spEliminarTituloAutor
	@au_id varchar(11)
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if  exists(select @au_id fROM titleauthor where au_id=@au_id)
		begin
			delete from titleauthor where	au_id=@au_id
			select CodError =1, Mensaje='TituloAutor ELIMINADO CORRECTAMENTE'
		end	
	else select CodError=0,Mensaje='EROR: CODIGO NO EXISTE'

	end
	go

	EXEC spEliminarTituloAutor '267-41-2394'
	GO
	 exec spListartitulosAutor
 go