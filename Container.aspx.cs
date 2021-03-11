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
    public partial class Container : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadContainer();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=PortoT;Integrated Security=True");

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("insert into tbContainer values('" + txtCodCliente.Text + "', '" + txtNmCliente.Text + "', '" + txtNumContainer.Text + "', '"+ ddTipo.SelectedValue +"', '"+ddStatus.SelectedValue+"','"+ddCategoria.SelectedValue+"')", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro realizado com sucesso!')", true);
            LoadContainer();

            con.Close();
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("update tbContainer set nome_cliente = '" + txtNmCliente.Text + "', num_container = '" + txtNumContainer.Text + "', tipo_container = '" + ddTipo.SelectedValue + "', status_container = '" + ddStatus.SelectedValue + "', categoria_container = '" + ddCategoria.SelectedValue + "' where id_cliente = '"+txtCodCliente.Text+"'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro alterado com sucesso!')", true);
            LoadContainer();

            con.Close();
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comn = new SqlCommand("delete tbContainer where id_cliente = '" + txtCodCliente.Text + "'", con);
            comn.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cadastro deletado com sucesso!')", true);
            LoadContainer();

            con.Close();
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            SqlCommand comn = new SqlCommand("select * from tbContainer where id_cliente = '" + txtCodCliente.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            Consulta.DataSource = dt;
            Consulta.DataBind();
        }
        void LoadContainer()
        {
            SqlCommand comn = new SqlCommand("select * from tbContainer", con);
            SqlDataAdapter d = new SqlDataAdapter(comn);
            DataTable dt = new DataTable();
            d.Fill(dt);
            Consulta.DataSource = dt;
            Consulta.DataBind();
        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comn = new SqlCommand("select * from tbContainer where id_cliente = '" + int.Parse(txtCodCliente.Text) + "'", con);
            SqlDataReader r = comn.ExecuteReader();
            while (r.Read())
            {
                txtNmCliente.Text = r.GetValue(1).ToString();
                txtNumContainer.Text = r.GetValue(2).ToString();
                ddTipo.SelectedValue = r.GetValue(3).ToString();
                ddStatus.SelectedValue = r.GetValue(4).ToString();
                ddCategoria.SelectedValue = r.GetValue(5).ToString();
            }
            con.Close();
        }
    }
}