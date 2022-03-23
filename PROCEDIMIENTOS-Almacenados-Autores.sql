use pubs
go
if OBJECT_ID('spListarAutor')is not null
		drop proc spListarAutor
go
create proc spListarAutor
as
begin
	select * from authors
end
 go
 
 exec spListarAutor
 go
 -- PROCEDIMIENTO PARA AGREGAR AUTOR
 if OBJECT_ID('spAgregarAutor') is not null
	drop proc spAgregarAutor
go
	create proc spAgregarAutor
	@au_id varchar(11),@au_lname varchar(40),@au_fname varchar(20),@phone char(12),@address varchar(40),@city varchar(20),@state char(2),@zip char(5),@contract char(1)
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if not exists(select au_id fROM authors where au_id=@au_id)
	--VALIDAR Q EL NOMBRE DE ESCUELA NO SE REPITA
		if NOT exists(select phone from authors where phone=@phone)
			begin
			INSERT into authors VALUES(@au_id,@au_lname,@au_fname,@phone,@address,@city,@state,@zip,@contract)
			Select CodError=1, Mensaje='AUTOR AGREGADO CORRECTAMENTE'
			end
		else select CodError =0, Mensaje='ERROR: numero de celular EXISTE'
	else select CodError=0,Mensaje='EROR: CODIGO DE AUTOR DUPLICADO'

	end
	go
	

	exec spAgregarAutor '172-15-1334','CRISTIAN','DEL CARPIO','974791490','Calle los Jardines','Cusco','PE','08000','1'
	go
	
	--PROCEDIMIENTO PARA ACTUALIZAR AUTOR
	

if OBJECT_ID('spActualizarAutor') is not null
	drop proc spActualizarAutor
go
	create proc spActualizarAutor
	@au_id varchar(11),@au_lname varchar(40),@au_fname varchar(20),@phone char(12),@address varchar(40),@city varchar(20),@state char(2),@zip char(5),@contract char(1)
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if exists(select au_id fROM authors where au_id=@au_id)
	--VALIDAR Q EL NOMBRE DE ESCUELA NO SE REPITA
		if NOT exists(select phone from authors where phone=@phone)
			begin
			UPDATE authors SET au_lname=@au_lname, au_fname=@au_fname,phone=@phone,address=@address,city=@city,state=@state,zip=@zip,contract=@contract WHERE au_id=@au_id
			Select CodError=1, Mensaje='Autor ACTUALIZADO CORRECTAMENTE'
			end
		else select CodError =0, Mensaje='ERROR: numero de celular EXISTE'
	else select CodError=0,Mensaje='EROR: CODIGO DE AUTOR no Existe'

	end
	go



	exec spActualizarAutor '172-15-1334','faby','DEL CARPIO','974791490','Calle los Jardines','Cusco','PE','08000','0'
	go
	exec spListarAutor
	go	

	--PROCEDIMIENTO PARA ELIMINAR ESCUELA
	if OBJECT_ID('spEliminarAutor') is not null
	drop proc spEliminarAutor
go
	create proc spEliminarAutor
	@au_id varchar(11)
	as
	begin
	--VALIDAR CLAVE PRIMARIA
	if  exists(select @au_id fROM authors where au_id=@au_id)
		if  NOT exists(select au_id fROM titleauthor where au_id=@au_id)
		begin
			delete from authors where	au_id=@au_id
			select CodError =1, Mensaje='AUTOR ELIMINADO CORRECTAMENTE'
		end
		else select CodError=0,Mensaje='EROR: AUTOR TIENE TITULOS'
	else select CodError=0,Mensaje='EROR: CODIGO NO EXISTE'

	end
	go

	EXEC spEliminarAutor '172-15-1334'
	GO
	EXEC spListarAutor


	--Procedimiento apra buscar AUTORES
	
	if OBJECT_ID('spBUSCARAutor') is not null
	drop proc spBUSCARAutor
	go
	create proc spBUSCARAutor
	@texto varchar(50), @Criterio Varchar(50)
	as
	begin
	--BUSCQUEDA EXACTA
	if(@Criterio='au_id')
	select au_id,au_lname,au_fname,phone,address,city ,state,zip ,contract  from authors where au_id=@texto
		--BUSQUEDA SENCITIVA PARA EL NOMRBE DE LA ESCUELA
		else if (@Criterio='au_lname')
		select au_id,au_lname,au_fname,phone,address,city ,state,zip ,contract  from authors where au_lname like @texto+'%'
	end 
	go

	exec spBuscarAutor 's','au_lname'
	GO	
	exec spBuscarAutor '274-80-9391','au_id'
	GO	

		INSERT into authors VALUES('175-26-2365','CRIS','PZ','974791490','CALLE TRUJILLO','TRUJILLO','PE','	','1')
	EXEC spListarAutor
	