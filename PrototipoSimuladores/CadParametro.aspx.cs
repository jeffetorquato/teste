using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Telerik.Web.UI;
using System.Web.UI.WebControls;

public partial class CadParametro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rgdvDadosIndicadores_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        if (e.Item is GridEditFormItem && e.Item.IsInEditMode && !e.Item.OwnerTableView.IsItemInserted)
        {
            GridEditFormItem formItem = (GridEditFormItem)e.Item;
            RadComboBox dropdownUnidade = (RadComboBox)formItem.FindControl("cbUnidade");
            dropdownUnidade.AutoPostBack = true;
            dropdownUnidade.CausesValidation = false;
            
            RadComboBox dropdownTipoDado = (RadComboBox)formItem.FindControl("cbTipoDado");
            dropdownTipoDado.AutoPostBack = true;
            dropdownTipoDado.CausesValidation = false;
        }
    }
}