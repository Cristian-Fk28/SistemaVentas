<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTitulos.aspx.cs" Inherits="ClienteWebs.frmTitulos" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TITULOS&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
    
            <asp:Image ID="Image1" runat="server" Height="157px" Width="166px" ImageUrl="../fonts/fondo3.png"/>
    
          </h1>
    <h3>Agregar Nuevo Titulo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="VER" runat="server" Id="btnVer" class="btn btn-danger btn-lg"  BackColor="Maroon" BorderColor="Black" ForeColor="White" Height="40px"  Width="210px" OnClick="btnVer_Click2"/>
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ID:&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtCodigo" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvCodigo2" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="B">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvCodigo3" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Codigo Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
     &nbsp;&nbsp;&nbsp;Nombre: <asp:TextBox runat="server" Id="txtNombre" Height="30px" Width="320px"/>
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvNombre3" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tipo: <asp:TextBox runat="server" Id="txtTipo" Height="30px" Width="250px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Pub:&nbsp; <asp:TextBox runat="server" Id="txtPub" Height="30px" Width="124px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          Precio:&nbsp; <asp:TextBox runat="server" Id="txtPrecio" Height="30px" Width="241px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          Advance: <asp:TextBox runat="server" Id="txtAdvance" Height="30px" Width="313px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          <br />
        <br />
    
          Royalty:&nbsp;&nbsp;&nbsp; <asp:TextBox runat="server" Id="txtRoyalty" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ytd: <asp:TextBox runat="server" Id="txtYtd" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
          Notas: <asp:TextBox runat="server" Id="txtNotas" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    

        &nbsp; Fecha: <asp:TextBox runat="server" Id="txtFecha" Height="30px" Width="128px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="A">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre Obligatorio" ValidationGroup="C">*</asp:RequiredFieldValidator>
    

        &nbsp;<br />
        &nbsp;<p> 
            &nbsp;&nbsp;&nbsp; 
        <asp:Button Text="AGREGAR" runat="server" Id="btnAgregar" class="btn btn-success btn-lg" ValidationGroup="A" OnClick="btnAgregar_Click2" BorderColor="Black" ForeColor="Black" Height="45px" Width="220px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="ACTUALIZAR" runat="server" Id="btnActualizar" class="btn btn-warning btn-lg" ValidationGroup="A" OnClick="btnActualizar_Click" BorderColor="Black" ForeColor="Black" Height="45px" Width="220px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="ELIMINAR" runat="server" Id="btnEliminar" class="btn btn-dark btn-lg"  OnClick="btnEliminar_Click" BorderColor="Black" ForeColor="White" Height="45px" Width="220px"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="LIMPIAR" runat="server" Id="btnListar" class="btn btn-danger btn-lg"  BackColor="#336600" BorderColor="Black" ForeColor="White" Height="45px"  Width="220px" OnClick="btnLimpiar_Click"/>
         
    </p>
        <p> 
        &nbsp;Buscar por:&nbsp;Nombre:&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Height="40px" Width="213px"></asp:TextBox>
&nbsp; Criterio:
            <asp:TextBox ID="txtCriterios" runat="server" Height="40px" Width="232px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button Text="BUSCAR " runat="server" Id="btnBuscar" class="btn btn-danger btn-lg"  BackColor="Maroon" BorderColor="Black" ForeColor="White" Height="50px"  Width="220px" OnClick="btnBuscar_Click"/>
         
    &nbsp;&nbsp;&nbsp;
         
    </p>

    <p>
        <asp:GridView runat="server" ID ="gvEscuela" CellPadding="2" Height="16px" Width="1070px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" OnSelectedIndexChanged="gvEscuela_SelectedIndexChanged" ForeColor="Black" GridLines="None"   >
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
