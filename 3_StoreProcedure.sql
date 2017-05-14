--drop procedure Mostrar_Mapa
create procedure Mostrar_Mapa @Cod_Restaurante char(5)
as
select rm.Numero_Mesa,Me.Fumador,Me.Cantidad_Personas,rm.Estado from Restaurante_Mesa as RM
inner join Mesa as Me
on RM.Cod_Mesa = Me.Cod_Mesa
where RM.Cod_Restaurante=@Cod_Restaurante

exec Mostrar_Mapa 'RE002'