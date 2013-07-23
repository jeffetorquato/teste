<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CadParametro.aspx.cs" Inherits="CadParametro" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">

    <telerik:RadGrid ID="rgdvDadosIndicadores" runat="server" AutoGenerateColumns="False"
        Skin="IDG" EnableEmbeddedSkins="False" CssClass="GridAltRow_IDG" AllowAutomaticDeletes="True"
        AllowSorting="True" AllowAutomaticUpdates="True" AllowAutomaticInserts="True"
        DataSourceID="odsDadosIndicadores" GridLines="None" AllowPaging="True" 
        OnItemDataBound="rgdvDadosIndicadores_ItemDataBound">
        <HeaderContextMenu Skin="IDG" EnableEmbeddedSkins="False" EnableTheming="True">
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </HeaderContextMenu>
        <PagerStyle PrevPageImageUrl="PagingPrev.gif" NextPageImageUrl="PagingNext.gif" FirstPageImageUrl="PagingFirst.gif"
            LastPageImageUrl="PagingLast.gif"></PagerStyle>
        <MasterTableView CommandItemDisplay="Top" DataSourceID="odsDadosIndicadores" DataKeyNames="IdDadosIndicadores"
            CurrentResetPageIndexAction="SetPageIndexToFirst" AllowFilteringByColumn="false"
            Dir="LTR">
            <CommandItemSettings AddNewRecordImageUrl="AddRecord.gif" RefreshImageUrl="Refresh.gif">
            </CommandItemSettings>
            <RowIndicatorColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </RowIndicatorColumn>
            <ExpandCollapseColumn>
                <HeaderStyle Width="20px"></HeaderStyle>
            </ExpandCollapseColumn>
            <Columns>
                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn"
                    EditText="Alterar">
                </telerik:GridEditCommandColumn>
                <telerik:GridBoundColumn DataField="IdDadosIndicadores" DataType="System.Int32" ReadOnly="True"
                    Visible="false" SortExpression="IdDadosIndicadores" UniqueName="IdDadosIndicadores" />
                <telerik:GridTemplateColumn HeaderText="Ordem" SortExpression="Ordem" UniqueName="Ordem">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblOrdem" Text='<%# Eval("Ordem") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadNumericTextBox Type="Number" MaxLength="3" runat="server" ID="txtOrdem"
                            Text='<%# Bind("Ordem") %>'>
                            <NumberFormat AllowRounding="True" DecimalDigits="0" KeepNotRoundedValue="False" />
                        </telerik:RadNumericTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtOrdem"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Sigla" SortExpression="Sigla" UniqueName="Sigla"
                    Display="true">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblSigla" Text='<%# Eval("Sigla") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadTextBox MaxLength="20" runat="server" ID="txtSigla" 
                            Text='<%# Bind("Sigla") %>'>
                        </telerik:RadTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSigla"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Nome" SortExpression="Nome" UniqueName="Nome">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblNome" Text='<%# Eval("Nome") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadTextBox MaxLength="100" runat="server" Width="350px" ID="txtNome" Text='<%# Bind("Nome") %>'>
                        </telerik:RadTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNome"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Descrição" SortExpression="Descricao" UniqueName="Descricao"
                    Display="false">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblDescricao" Text='<%# Eval("Descricao") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadTextBox MaxLength="600" runat="server" ID="txtDescricao" Width="350px"
                            Text='<%# Bind("Descricao") %>' TextMode="MultiLine">
                        </telerik:RadTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtDescricao"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Tipo de Dado" SortExpression="TipoDado" UniqueName="TipoDado"
                    Display="false">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblTipoDado" Text='<%# Eval("TipoDado") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadComboBox runat="server" ID="cbTipoDado" SelectedValue='<%# Bind("TipoDado") %>'
                            Text='<%# Bind("TipoDado") %>' AutoPostBack="True" CausesValidation="False">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Real" Value="Real" />
                                <telerik:RadComboBoxItem runat="server" Text="Inteiro" Value="Inteiro" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Unidade" SortExpression="IdUnidade" UniqueName="IdUnidade"
                    Display="false" DataField="IdUnidade">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblUnidade" Text='<%# Eval("IdUnidade") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadComboBox runat="server" ID="cbUnidade" AutoPostBack="True" CausesValidation="False" 
                            AppendDataBoundItems="true" DataSourceID="odsUnidade"
                            DataTextField="Nome" DataValueField="IdUnidade" SelectedValue='<%# Bind("IdUnidade") %>'>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Critério de" SortExpression="CriterioDesde"
                    UniqueName="CriterioDesde" Display="false" EditFormColumnIndex="1">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblCriterioDesde" DbValue='<%# Eval("CriterioDesde") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadNumericTextBox Width="175px" Type="Number" MaxLength="18" runat="server"
                            ID="txtCriterioDesde" DbValue='<%# Bind("CriterioDesde") %>' MaxValue="999999999990.99999"
                            MinValue="-99999999999.99999" NumberFormat-AllowRounding="False" Culture="pt-br">
                            <NumberFormat AllowRounding="false" DecimalDigits="5" DecimalSeparator="," GroupSeparator="."
                                GroupSizes="3" />
                        </telerik:RadNumericTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="txtCriterioDesde"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Critério Até" SortExpression="CriterioAte"
                    UniqueName="CriterioAte" Display="false" EditFormColumnIndex="1">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblCriticaAte" DbValue='<%# Eval("CriterioAte") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadNumericTextBox Width="175px" Type="Number" MaxLength="18" runat="server"
                            ID="txtCriterioAte" DbValue='<%# Bind("CriterioAte") %>' MaxValue="999999999990.99999"
                            MinValue="-99999999999.99999" NumberFormat-AllowRounding="False" Culture="pt-br">
                            <NumberFormat DecimalDigits="5" DecimalSeparator="," GroupSizes="3" GroupSeparator="."
                                AllowRounding="false" />
                        </telerik:RadNumericTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtCriterioAte"
                            ErrorMessage="*" runat="server">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Classificação" SortExpression="Classificacao"
                    UniqueName="Classificacao" EditFormColumnIndex="1">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblClassificacao" Text='<%# Eval("Classificacao") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadComboBox ID="cbClassificacao" SelectedValue='<%# Bind("Classificacao") %>'
                            runat="server" Text='<%# Bind("Classificacao") %>' CausesValidation="False">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Primário" Value="Primário" />
                                <telerik:RadComboBoxItem runat="server" Text="Econômico" Value="Econômico" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cbClassificacao"
                            ErrorMessage="*">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridDropDownColumn DataField="idCriterioPnaq" DataSourceID="odsCriterioPnaq"
                    EditFormColumnIndex="1" CurrentFilterFunction="StartsWith" AutoPostBackOnFilter="true"
                    HeaderText="Critério Pnaq" ListTextField="Nome" ListValueField="IdCriterioPnaq"
                    UniqueName="IdCriterioPnaq">
                </telerik:GridDropDownColumn>
                <telerik:GridDropDownColumn DataField="IdInstrucaoValorAno" DataSourceID="odsInstrucaoValorAno"
                    EditFormColumnIndex="1" Display="false" HeaderText="Instrução Valor ano" ListTextField="Descricao"
                    ListValueField="IdInstrucaoValorAno" UniqueName="IdInstrucaoValorAno_">
                </telerik:GridDropDownColumn>
                <telerik:GridTemplateColumn HeaderText="Origem" SortExpression="Origem" UniqueName="Origem"
                    Display="false" EditFormColumnIndex="1">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblOrigem" Text='<%# Eval("Origem") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadComboBox ID="cbOrigem" SelectedValue='<%# Bind("Origem") %>' runat="server"
                            Text='<%# Bind("Origem") %>' CausesValidation="False">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Pública" Value="Pública" />
                                <telerik:RadComboBoxItem runat="server" Text="Privada" Value="Privada" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn Display="False" HeaderText="Aplicação" UniqueName="aplicacao"
                    EditFormColumnIndex="1">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblflgUso" Text='<%# Eval("FlgUso") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <telerik:RadComboBox runat="server" ID="cbflgUso" Text='<%# Bind("FlgUso") %>' SelectedValue='<%# Bind("FlgUso") %>'
                            CausesValidation="False">
                            <Items>
                                <telerik:RadComboBoxItem runat="server" Text="Fundo" Value="0" />
                                <telerik:RadComboBoxItem runat="server" Text="Plano" Value="1" />
                                <telerik:RadComboBoxItem runat="server" Text="Ambos" Value="2" />
                            </Items>
                            <CollapseAnimation Duration="200" Type="OutQuint" />
                        </telerik:RadComboBox>
                    </EditItemTemplate>
                </telerik:GridTemplateColumn>
                <telerik:GridButtonColumn ConfirmText="Deseja excluir este Dado do indicador?" ConfirmTitle="Excluir"
                    ButtonType="ImageButton" CommandName="Delete" Text="Excluir" UniqueName="DeleteColumn">
                    <ItemStyle HorizontalAlign="Center" />
                </telerik:GridButtonColumn>
            </Columns>
            <EditFormSettings ColumnNumber="2" CaptionDataField="Nome">
            </EditFormSettings>
            <PagerStyle PrevPageImageUrl="PagingPrev.gif" NextPageImageUrl="PagingNext.gif" FirstPageImageUrl="PagingFirst.gif"
                LastPageImageUrl="PagingLast.gif"></PagerStyle>
        </MasterTableView>
        <FilterMenu Skin="IDG" EnableEmbeddedSkins="False" EnableTheming="True">
            <CollapseAnimation Type="OutQuint" Duration="200"></CollapseAnimation>
        </FilterMenu>
        <StatusBarSettings LoadingText="Carregando..." ReadyText="Pronto" />
    </telerik:RadGrid>
    <asp:ObjectDataSource ID="odsDadosIndicadores" runat="server" SelectMethod="ConsultarParametros"
        TypeName="Prototipo.BLL.Parametro" OldValuesParameterFormatString="{0}">      
    </asp:ObjectDataSource>    
</asp:Content>

