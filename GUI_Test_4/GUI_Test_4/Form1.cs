using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraBars.Helpers;
using DevExpress.Skins;
using DevExpress.LookAndFeel;
using DevExpress.UserSkins;
using DevExpress.XtraCharts;


namespace GUI_Test_4
{
    public partial class App : XtraForm
    {
        public App()
        {
            InitializeComponent();
            InitSkinGallery();
            InitChartControl();

        }
        void InitSkinGallery()
        {
            SkinHelper.InitSkinGallery(rgbiSkins, true);
        }
        void InitChartControl()
        {
           /* chartControl.AppearanceName = "Light";
            chartControl.PaletteName = "Office";
            ChangeSeries(ViewType.Bar);
            chartControl.Legend.Visible = false;
            chartControl.Series[0].LabelsVisibility = DevExpress.Utils.DefaultBoolean.True;*/
        }
        void ChangeSeries(ViewType viewType)
        {
           /* double[] values = { 3.1, 2.3, 3.2, 3.9, 5.1 };
            Series series = new Series("Series", viewType);
            for (int i = 0; i < values.Length; i++)
                series.Points.Add(new SeriesPoint((i + 1) * 10, new double[] { values[i], values[i] + 3, values[i] + 2, values[i] + 1 }));
            chartControl.Series.Clear();
            chartControl.Series.Add(series);*/
        }

        private void ribbonControl_Click(object sender, EventArgs e)
        {

        }

        private void navBarControl_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

    }
}