
<%@ Page ValidateRequest="false" Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmAutor.aspx.cs" Inherits="ClienteWebs.frmAutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <h1 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autores:
        </h1>
        <h1 ><asp:Label ID="txtLabel1" runat="server" Text="Codigo"></asp:Label>
        </h1>
        <h1><asp:Label ID="txtlabel2" runat="server" Text="Codigo"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            <asp:Image ID="Image1" runat="server" Height="163px" Width="175px" ImageUrl="../fonts/fondo2.png"/>
        </h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <h3>Agregar Nuevo Autor:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="VER" runat="server" Id="btnVer" class="btn btn-danger btn-lg"  BackColor="Maroon" BorderColor="Black" ForeColor="White" Height="40px"  Width="210px" OnClick="btnVer_Click"/>
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<p>
    
ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtCodigo" Height="30px" Width="140px"/>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvCodigo2" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="B">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvCodigo3" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
     &nbsp;&nbsp; &nbsp;Nombre: <asp:TextBox runat="server" Id="txtNombre" Height="30px" Width="158px"/>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvNombre3" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
        &nbsp;&nbsp;&nbsp; Apellido: <asp:TextBox runat="server" Id="txtApellido" Height="30px" Width="289px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
        Celular:&nbsp; <asp:TextBox runat="server" Id="txtCelular" Height="30px" Width="92px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          Direccion:&nbsp; <asp:TextBox runat="server" Id="txtDireccion" Height="30px" Width="287px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ciudad: <asp:TextBox runat="server" Id="txtCiudad" Height="30px" Width="145px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          <br />
        <br />
    
          Stado:&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtEstado" Height="30px" Width="90px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;Codigo Postal: <asp:TextBox runat="server" Id="txtCodPostal" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contrato: <asp:TextBox runat="server" Id="txtContrato" Height="30px" Width="52px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    </p>
        <p>
    
            &nbsp;</p>
    <p>
    
            &nbsp;</p>
    <p>
    
            &nbsp;</p>
        <p> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        <asp:Button Text="AGREGAR" runat="server" Id="btnAgregar" class="btn btn-success btn-lg" ValidationGroup="A" OnClick="btnAgregar_Click2" BorderColor="Black" ForeColor="Black" Height="45px" Width="220px"/> &nbsp;&nbsp; <asp:Button Text="ACTUALIZAR" runat="server" Id="btnActualizar" class="btn btn-warning btn-lg" ValidationGroup="A" OnClick="btnActualizar_Click" BorderColor="Black" ForeColor="Black" Height="45px" Width="220px"/> &nbsp;&nbsp; <asp:Button Text="ELIMINAR" runat="server" Id="btnEliminar" class="btn btn-dark btn-lg"  OnClick="btnEliminar_Click" BorderColor="Black" ForeColor="White" Height="45px" Width="220px"/> &nbsp;&nbsp; <asp:Button Text="LIMPIAR" runat="server" Id="btnLimpiar" class="btn btn-success btn-lg"  OnClick="btnLimpiar_Click" BorderColor="Black" ForeColor="White" Height="45px" Width="220px"/> &nbsp;&nbsp;  
         
    </p>
        <p> 
        &nbsp;&nbsp;&nbsp;&nbsp; Buscar por:&nbsp;Nombre:&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Height="40px" Width="207px"></asp:TextBox>
&nbsp; Criterio:
            <asp:TextBox ID="txtCriterios" runat="server" Height="40px" Width="215px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; <asp:Button Text="BUSCAR " runat="server" Id="btnBuscar" class="btn btn-danger btn-lg"  BackColor="Maroon" BorderColor="Black" ForeColor="White" Height="50px"  Width="220px" OnClick="btnBuscar_Click"/>
         
    &nbsp;&nbsp;&nbsp;
         
    </p>

    <p>
        <asp:GridView runat="server" ID ="gvEscuela" CellPadding="3" Height="16px" Width="1070px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" OnSelectedIndexChanged="gvEscuela_SelectedIndexChanged" BorderStyle="None" CellSpacing="2"   >
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            <Columns>
        
       
                <asp:CommandField ShowSelectButton="True" SelectText="Mostrar" >
              
                <ControlStyle Font-Bold="True" />
                </asp:CommandField>

            
                    
              
    </Columns>
        </asp:GridView>

    </p>
    <p>
        &nbsp;</p>
</div>
    
</asp:Content>
