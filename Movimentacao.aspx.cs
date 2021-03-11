using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CRUD_Container_prj
{
    public partial class Movimentacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadMovimentacao();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=PortoT;Integrated Security=True");

        protected void btnCadastrarMov_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("insert into tbMovimentacao values('" + txtCodMov.Text + "', '"+ddTipoMov.SelectedValue+"', '" + txtDtInicio.Text + "', '" + txtDtFim.Text + "')", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro realizado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnAlterarMov_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("update tbMovimentacao set tipo_movimentacao = '" + ddTipoMov.SelectedValue + "', dt_hr_ini = '" + txtDtInicio.Text + "', dt_hr_fim = '" + txtDtFim.Text + "' where id_cliente = '" + txtCodMov.Text + "'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro alterado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("delete tbMovimentacao where id_cliente = '" + txtCodMov.Text + "'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro deletado com sucesso!')", true);
            LoadMovimentacao();

            con.Close();
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            SqlCommand comn = new SqlCommand("select * from tbMovimentacao where id_cliente = '" + txtCodMov.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            ConsMov.DataSource = dt;
            ConsMov.DataBind();
        }

        void LoadMovimentacao()
        {
            SqlCommand comn = new SqlCommand("select * from tbMovimentacao", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            ConsMov.DataSource = dt;
            ConsMov.DataBind();
        }

        protected void btnBuscaMov_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comn = new SqlCommand("select * from tbContainer where id_cliente = '" + int.Parse(txtCodMov.Text) + "'", con);
            SqlDataReader r = comn.ExecuteReader();
            while (r.Read())
            {
                ddTipoMov.SelectedValue = r.GetValue(1).ToString();
                txtDtInicio.Text = r.GetValue(2).ToString();
                txtDtFim.Text = r.GetValue(3).ToString();
            }
            con.Close();
        }
    }
}