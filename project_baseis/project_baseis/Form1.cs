using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project_baseis
{
    public partial class Form1 : Form
    {
        private NpgsqlConnection conn;
        

        public Form1()
        {
            InitializeComponent();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "(select cast( sum(contract_cost)as text),'Συνολικός τζίρος για τα φορτηγά ' from insurance_contracts where car_licence_number in (select licence_number from vehicle_cost where vehicle_category = 'φορτηγό'))  union (select cast(sum(contract_cost)as text),'Συνολικός τζίρος για τα αυτοκίνητα ' from insurance_contracts where car_licence_number in (select licence_number from vehicle_cost where vehicle_category = 'αυτοκίνητο ΙΧ')); ";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void button6_Click(object sender, EventArgs e)
        {

            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = " (select cast(count(contract_code) as text),'Αυτοκίνητα με ηλικία απο 0 έως 4 έτη '  from insurance_contracts inner join vehicle_accountinginfo on insurance_contracts.car_licence_number = vehicle_accountinginfo.licence_number where year between '2017' and '2021') union  (select cast(count(contract_code) as text),'Αυτοκίνητα με ηλικία απο 5 έως 9 έτη '  from insurance_contracts inner join vehicle_accountinginfo on insurance_contracts.car_licence_number = vehicle_accountinginfo.licence_number where year between '2012' and '2016') union (select cast(count(contract_code) as text),'Αυτοκίνητα με ηλικία απο 10 έως 19 έτη ' from insurance_contracts inner join vehicle_accountinginfo on insurance_contracts.car_licence_number = vehicle_accountinginfo.licence_number where year between '2002' and '2011' ) union  (select cast(count(contract_code) as text),'Αυτοκίνητα με ηλικία πάνω απο 20 έτη ' from insurance_contracts inner join vehicle_accountinginfo on insurance_contracts.car_licence_number = vehicle_accountinginfo.licence_number where year < '2001') ; ";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "select * from insurance_contracts where datestart between '2021-04-01' and '2021-04-30' ";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {

            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "with The_outdated_contracts as (select contract_code,car_licence_number from insurance_contracts where dateend between '2021-07-01' and '2021-07-31' ), the_cars_found as (select owner_id,contract_code  from The_outdated_contracts,owns  where The_outdated_contracts.car_licence_number  =owns.car_licence_number)select tel,contract_code from owner_contact_info,the_cars_found where the_cars_found.owner_id = owner_contact_info.owner_id; ";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            
            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "select car_licence_number,insurance_category from insurance_contracts as ic inner join vehicle_cost as vh on ic.car_licence_number = vh.licence_number where  (dateend between '2021-07-01' and '2021-07-31') group by insurance_category,car_licence_number;";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "select   count(car_licence_number),insurance_category from insurance_contracts as ic inner join vehicle_cost as vh on ic.car_licence_number = vh.licence_number where  (datestart between '2016-07-01' and '2021-07-31') group by insurance_category;";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection("User ID=postgres;Password=6400;Host=localhost;Port=5432;Database=postgres;Pooling=true;Connection Lifetime=0;");
            conn.Open();
            String cmd = "select cast(avg(contract_cost) as text), 'Κέρδος αν συμβόλαιο φορτηγού ' from insurance_contracts where car_licence_number in (select licence_number from vehicle_cost where vehicle_category = 'φορτηγό') union ( select cast(avg(contract_cost) as text) , 'Κέρδος αν συμβόλαιο αυτοκινήτου ' from insurance_contracts where car_licence_number in (select licence_number from vehicle_cost where vehicle_category = 'αυτοκίνητο ΙΧ'));";
            NpgsqlCommand cmd2 = new NpgsqlCommand(cmd, conn);
            cmd2.Connection = conn;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = cmd;
            NpgsqlDataReader dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                dataGridView1.DataSource = dt;
            }
            cmd2.Dispose();
            conn.Close();
        }
    }

    
}
